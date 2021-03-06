--[[
	Informant - An addon for World of Warcraft that shows pertinent information about
	an item in a tooltip when you hover over the item in the game.
	Version: 5.1.3824 (SnaggleTooth)
	Revision: $Id: InfTooltip.lua 3769 2008-11-05 23:51:47Z kandoko $
	URL: http://auctioneeraddon.com/dl/Informant/

	Tooltip handler. Assumes the responsibility of filling the tooltip
	with the user-selected information

	License:
		This program is free software; you can redistribute it and/or
		modify it under the terms of the GNU General Public License
		as published by the Free Software Foundation; either version 2
		of the License, or (at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program(see GPL.txt); if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
]]
Informant_RegisterRevision("$URL: http://svn.norganna.org/auctioneer/branches/5.1.x_WotLK_Release/Informant/InfTooltip.lua $", "$Rev: 3769 $")

local nilSafeString			-- nilSafeString(String)
local whitespace			-- whitespace(length)
local getFilter = Informant.Settings.GetSetting
local debugPrint

local tooltip = LibStub("nTipHelper:1")

function Informant.TooltipHandler(frame, item, count, name, link, quality)
	-- nothing to do, if informant is disabled
	if (not getFilter('all')) then
		return;
	end;

	tooltip:SetFrame(frame)

	local extra = tooltip:GetExtra()
	local itemType, itemID, randomProp, factor, enchant, uniqID, gemSlot1, gemSlot2, gemSlot3, gemSlotBonus = tooltip:DecodeLink(link)
	if itemType ~= "item" then return end

	local quant = 0
	local sell = 0
	local buy = 0
	local stacks = 1

	local itemInfo
	if (itemID and itemID > 0) then
		itemInfo = Informant.GetItem(itemID)
	end
	if (not itemInfo) then return end
	Informant.itemInfo = itemInfo

	itemInfo.itemName = name
	itemInfo.itemLink = link
	itemInfo.itemCount = count
	itemInfo.itemQuality = quality

	stacks = itemInfo.stack
	if (not stacks) then stacks = 1 end

	buy = tonumber(itemInfo.buy) or 0
	sell = tonumber(itemInfo.sell) or 0
	quant = tonumber(itemInfo.quantity) or 0

	if (quant == 0) and (sell > 0) then
		local ratio = buy / sell
		if ((ratio > 3) and (ratio < 6)) then
			quant = 1
		else
			ratio = buy / (sell * 5)
			if ((ratio > 3) and (ratio < 6)) then
				quant = 5
			end
		end
	end
	if (quant == 0) then quant = 1 end

	buy = buy/quant

	itemInfo.itemBuy = buy
	itemInfo.itemSell = sell
	itemInfo.itemQuant = quant

	local embedded = getFilter('embed')

	tooltip:SetColor(1,1,1)
	if (getFilter('show-ilevel')) then
		if (itemInfo.itemLevel) then
			tooltip:AddLine(_INFM('FrmtInfoItemLevel'):format(itemInfo.itemLevel), embedded)
		end
	end

	if (getFilter('show-link')) then
		tooltip:AddLine(_INFM('FrmtInfoItemLink'):format((":"):join(itemID, enchant, gemSlot1, gemSlot2, gemSlot3, gemSlotBonus, randomProp, uniqID), nil, embedded))
	end

	--DEFAULT_CHAT_FRAME:AddMessage("Got vendor: "..(buy or 0).."/"..(sell or 0))
	if (getFilter('show-vendor')) then
		if ((buy > 0) or (sell > 0)) then
			local bgsc = tooltip:Coins(buy)
			local sgsc = tooltip:Coins(sell)

			tooltip:SetColor(0.8, 0.5, 0.1)
			if (count and (count > 1)) then
				if (getFilter('show-vendor-buy')) then
					tooltip:AddLine(_INFM('FrmtInfoBuymult'):format(count, bgsc), buy*count, embedded)
				end
				if (getFilter('show-vendor-sell')) then
					tooltip:AddLine(_INFM('FrmtInfoSellmult'):format(count, sgsc), sell*count, embedded)
				end
			else
				if (getFilter('show-vendor-buy')) then
					tooltip:AddLine(_INFM('FrmtInfoBuy'):format(), buy, embedded)
				end
				if (getFilter('show-vendor-sell')) then
					tooltip:AddLine(_INFM('FrmtInfoSell'):format(), sell, embedded)
				end
			end
		end
	end

	tooltip:SetColor(1,1,1)
	if (getFilter('show-stack')) then
		if (stacks > 1) then
			tooltip:AddLine(_INFM('FrmtInfoStx'):format(stacks), nil, embedded)
		end
	end
	if (getFilter('show-merchant')) then
		if (itemInfo.vendors) then
			local merchantCount = #itemInfo.vendors
			if (merchantCount > 0) then
				tooltip:AddLine(_INFM('FrmtInfoMerchants'):format(merchantCount), 0.5, 0.8, 0.5, embedded)
			else
				-- NOTE - there are 2 cases for "no known":  nil list, and zero length list
				if (getFilter('show-zero-merchants')) then
					tooltip:AddLine(_INFM('FrmtInfoNoKnownMerchants'), 0.8, 0.2, 0.2, embedded)
				end
			end
		else
			-- NOTE - there are 2 cases for "no known":  nil list, and zero length list
			if (getFilter('show-zero-merchants')) then
				tooltip:AddLine(_INFM('FrmtInfoNoKnownMerchants'), 0.8, 0.2, 0.2, embedded)
			end
		end
	end
	if (getFilter('show-usage')) then
		tooltip:SetColor(0.6, 0.4, 0.8)
		local reagentInfo = ""
		if (itemInfo.classText) then
			reagentInfo = _INFM('FrmtInfoClass'):format(itemInfo.classText)
			tooltip:AddLine(reagentInfo, embedded)
		end
		if (itemInfo.usedList and itemInfo.usageText) then
			if (#itemInfo.usedList > 2) then

				local currentUseLine = nilSafeString(itemInfo.usedList[1])..", "..nilSafeString(itemInfo.usedList[2])..","
				reagentInfo = _INFM('FrmtInfoUse'):format(currentUseLine)
				tooltip:AddLine(reagentInfo, embedded)

				for index = 3, #itemInfo.usedList, 2 do
					if (itemInfo.usedList[index+1]) then
						reagentInfo = whitespace(#_INFM('FrmtInfoUse') + 3)..nilSafeString(itemInfo.usedList[index])..", "..nilSafeString(itemInfo.usedList[index+1])..","
						tooltip:AddLine(reagentInfo, embedded)
					else
						reagentInfo = whitespace(#_INFM('FrmtInfoUse') + 3)..nilSafeString(itemInfo.usedList[index])
						tooltip:AddLine(reagentInfo, embedded)
					end
				end
			else
				reagentInfo = _INFM('FrmtInfoUse'):format(itemInfo.usageText)
				tooltip:AddLine(reagentInfo, nil, embedded)
			end
		end
	end
	if (getFilter('show-quest')) then
		tooltip:SetColor(0.5, 0.5, 0.8)
		if (itemInfo.quests) then
			local questCount = itemInfo.questCount
			if (questCount > 0) then
				tooltip:AddLine(_INFM('FrmtInfoQuest'):format(questCount), embedded)
			end
		end
	end

	tooltip:ClearFrame(frame)
end

function nilSafeString(str)
	return str or "";
end

function whitespace(length)
	local spaces = ""
	for index = length, 0, -1 do
		spaces = spaces.." "
	end
	return spaces
end

-------------------------------------------------------------------------------
-- Prints the specified message to nLog.
--
-- syntax:
--    errorCode, message = debugPrint([message][, title][, errorCode][, level])
--
-- parameters:
--    message   - (string) the error message
--                nil, no error message specified
--    title     - (string) the title for the debug message
--                nil, no title specified
--    errorCode - (number) the error code
--                nil, no error code specified
--    level     - (string) nLog message level
--                         Any nLog.levels string is valid.
--                nil, no level specified
--
-- returns:
--    errorCode - (number) errorCode, if one is specified
--                nil, otherwise
--    message   - (string) message, if one is specified
--                nil, otherwise
-------------------------------------------------------------------------------
function debugPrint(message, title, errorCode, level)
	return Informant.DebugPrint(message, "InfTooltip", title, errorCode, level)
end
