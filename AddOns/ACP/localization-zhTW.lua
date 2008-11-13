﻿if not ACP then return end

if (GetLocale() == 	"zhTW") then
	ACP:UpdateLocale( {
		["Reload your User Interface?"] = "重載你的使用者介面?",
		["Save the current addon list to [%s]?"] = "儲存目前的插件清單為[%s]?",
		["Enter the new name for [%s]:"] = "替[%s]重新取名:",
		["Addons [%s] Saved."] = "插件清單[%s]存檔完畢。",
		["Addons [%s] Unloaded."] = "插件清單[%s]已卸載。",
		["Addons [%s] Loaded."] = "插件清單[%s]已載入。",
		["Addons [%s] renamed to [%s]."] = "插件清單[%s]重新命名為[%s]。",
		["Loaded on demand."] = "隨需求載入。",
		["AddOns"] = "插件管理",
		["Load"] = "載入",
		["Disable All"] = "全部停用",
		["Enable All"] = "全部啟用",
		["ReloadUI"] = "重載介面",
		["Sets"] = "設定",
		["No information available."] = "無可用的資訊。",
		["Loaded"] = "已載入",
		["Recursive"] = "遞迴",
		["LoD Children"] = "隨需求載入子插件",
		["Loadable OnDemand"] = "可隨需求載入",
		["Disabled on reloadUI"] = "重載介面後停用",
		["Default"] = "預設";
		["Set "] = "設定: ";
		["Save"] = "存檔";
		["Load"] = "載入";
		["Unload"] = "卸載";
		["Rename"] = "重新命名";
		["Use SHIFT to override the current enabling of dependancies behaviour."] = "使用Shift鍵無視目前的遞迴設定。",
		["Press CTRL to override the enabling of LoD children."] = "使用Ctrl鍵無視目前的隨需求載入子插件設定。",
    	["Click to enable protect mode. Protected addons will not be disabled"] = "點擊啟用保護模式。受保護的插件",
    	["when performing a reloadui."]="重載介面後不會被停用。",
    	["ACP: Some protected addons aren't loaded. Reload now?"]="ACP: 部分受保護的插件沒有被載入。現在重載介面?",
	
	
		["Blizzard_AuctionUI"] = "Blizzard: Auction",
		["Blizzard_BattlefieldMinimap"] = "Blizzard: Battlefield Minimap",
		["Blizzard_BindingUI"] = "Blizzard: Binding",
		["Blizzard_CombatText"] = "Blizzard: Combat Text",
		["Blizzard_CraftUI"] = "Blizzard: Craft",
		["Blizzard_GMSurveyUI"] = "Blizzard: GM Survey",
		["Blizzard_InspectUI"] = "Blizzard: Inspect",
		["Blizzard_ItemSocketingUI"] = "Blizzard: Item Socketing",
		["Blizzard_MacroUI"] = "Blizzard: Macro",
		["Blizzard_RaidUI"] = "Blizzard: Raid",
		["Blizzard_TalentUI"] = "Blizzard: Talent",
		["Blizzard_TradeSkillUI"] = "Blizzard: Trade Skill",
		["Blizzard_TrainerUI"] = "Blizzard: Trainer",
	
		["*** Enabling <%s> %s your UI ***"] = "*** 啟用<%s>，%s你的使用者介面 ***";
		["*** Unknown Addon <%s> Required ***"] = "*** 需要未知的插件<%s> ***";
		["LoD Child Enable is now %s"] = "隨需求載入子插件: %s";
		["Recursive Enable is now %s"] = "遞迴載入插件: %s";
		["Addon <%s> not valid"] = "無效的插件: <%s>",
		["Reload"] = "重載";
		["Author"] = "作者";
		["Version"] = "版本";
		["Status"] = "狀態";
		["Dependencies"] = "需要";
		["Embeds"] = "內置";
    } )
end
