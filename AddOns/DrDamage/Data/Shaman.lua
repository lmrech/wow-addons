if select(2, UnitClass("player")) ~= "SHAMAN" then return end
local GT = AceLibrary("Gratuity-2.0")
local BS
if GetLocale() ~= "enUS" then 
	BS = AceLibrary("Babble-Spell-2.2")
else
	BS = {}
	setmetatable(BS,{ __index = function(t,k) return k end })
end

--Downranking exceptions: Flame Shock, Frost Shock. Rest is normal.
--No downranking penalty on: Lightning Shield, Searing Totem, Fire Nova Totem, Magma Totem, Healing Stream Totem and Earth Shield

function DrDamage:PlayerData()

	self.ClassSpecials[BS["Mana Tide Totem"]] = function()
		return 0.24 * UnitManaMax("player") - math.floor(0.03*(UnitManaMax("player") - 15 * select(3,UnitStat("player",4)))), 0.40, 0.8, 1
	end
	self.ClassSpecials[BS["Mana Spring Totem"]] = function(rank)
		local bonus = 0
		if DrDamage:GetSetAmount("Cyclone Raiment") >= 2 then
			bonus = 180
		end
		return (120 + 120 * rank + bonus) * (1 + (self.talents["Restorative Totems"] or 0) * 0.05) - ( 20 + 20 * rank) * (1 - (self.talents["Totemic Focus"] or 0) * 0.05), 0.40, 0.8, 1
	end	

	--Special calculation
	
	--General
	self.Calculation["Dual Wield Specialization"] = function( calculation, talentValue )
		if OffhandHasWeapon() then
			calculation.hitPerc = calculation.hitPerc + talentValue
		end
	end
	
	--Spell specific
	self.Calculation["Earth Shield"] = function( calculation, ActiveAuras, BuffTalentRanks )
		if BuffTalentRanks["Purification"] and UnitName("target") and not UnitIsUnit("target","player") and UnitIsFriend("target","player") then
			calculation.dmgM = calculation.dmgM / ( 1 + BuffTalentRanks["Purification"] * 0.02 )
		end
	end
	self.Calculation["Healing Way"] = function( calculation, _, _, _, apps )
		if apps then
			calculation.bDmgM = calculation.bDmgM + apps * 0.06
			calculation.spellDmgM = calculation.spellDmgM + apps * 0.054 - ( apps - 1 ) * 0.003
		end
	end
	self.SetBonuses["Attack"] = function( calculation )
		--Totem of the Astral Winds
		if IsEquippedItem( 27815 ) then
			if calculation.WindfuryBonus and calculation.WindfuryAttacks and calculation.WindfuryAttacks >= 2 then
				calculation.WindfuryBonus = calculation.WindfuryBonus + 80
			end
			if calculation.WindfuryBonusO and calculation.WindfuryAttacksO and calculation.WindfuryAttacksO >= 2 then
				calculation.WindfuryBonusO = calculation.WindfuryBonusO + 80
			end
		end
	end
	self.Calculation["Lightning Shield"] = function( calculation )
		--Merciless Gladiator's Linked Gauntlets
		if IsEquippedItem( 32005 ) then
			calculation.dmgM = calculation.dmgM * 1.08
		end
	end
	
		
	
	--Set bonuses
	self.SetBonuses["Tidefury Raiment"] = { 27510, 27802, 27909, 28231, 28349, }
	self.SetBonuses["Cataclysm Raiment"] = { 30164, 30165, 30166, 30167, 30168, }
	self.SetBonuses["The Ten Storms"] = { 16943, 16944, 16945, 16946, 16947, 16948, 16949, 16950 }
	self.SetBonuses["Cyclone Raiment"] = { 29028, 29029, 29030, 29031, 29032 }
	self.SetBonuses["Cyclone Harness"] = { 29038, 29039, 29040, 29042, 29043 }
	self.SetBonuses["Skyshatter Raiment"] = { 31007, 31012, 31016, 31019, 31022 }
	self.SetBonuses["Skyshatter Regalia"] = { 31008, 31014, 31017, 31020, 31023 }
	
	--Effects
	self.SetBonuses["Chain Lightning"] = function( calculation )
		if self:GetSetAmount( "Tidefury Raiment" ) >= 2 then
			calculation.chainFactor = calculation.chainFactor + 0.13
		end
	end
	self.SetBonuses["Healing Wave"] = function( calculation )
		if self:GetSetAmount( "Cataclysm Raiment" ) >= 4 then
			calculation.castTime = calculation.castTime - 0.25
		end
	end
	self.SetBonuses["Chain Heal"] = function( calculation )
		if self:GetSetAmount( "The Ten Storms" ) >= 3 then
			calculation.chainFactor = calculation.chainFactor + 0.3
		end
		if self:GetSetAmount( "Skyshatter Raiment" ) >= 4 then
			calculation.dmgM = calculation.dmgM * 1.05
		end		
	end
	self.SetBonuses["Stormstrike"] = function( calculation )
		if self:GetSetAmount( "Cyclone Harness" ) >= 4 then
			calculation.baseBonus = calculation.baseBonus + 30
		end
	end
	self.SetBonuses["Lightning Bolt"] = function( calculation )
		if self:GetSetAmount( "Skyshatter Regalia" ) >= 4 then
			calculation.dmgM = calculation.dmgM * 1.05
		end		
	end	
	
	
	--Relic slot
	self.RelicSlot["Chain Heal"] = { 28523, 87, ModType1 = "Base" } 		--Totem of Healing Rains (Epic)
	self.RelicSlot["Healing Wave"] = { 27544, 88, }					--Totem of Spontaneous Regrowth
	self.RelicSlot["Lesser Healing Wave"] = { 25645, 79, 22396, 80, 23200, 53 }	--Totem of the Plains, Totem of Life, Totem of Sustaining
	self.RelicSlot["Earth Shock"] = { 22395, 30, 27947, 46, 27984, 46, }		--Totem of Rage, Totem of Impact
	self.RelicSlot["Frost Shock"] = { 22395, 30, 27947, 46, 27984, 46, }		--Totem of Rage, Totem of Impact
	self.RelicSlot["Flame Shock"] = { 22395, 30, 27947, 46, 27984, 46, }		--Totem of Rage, Totem of Impact
	self.RelicSlot["Lightning Bolt"] = { 28248, 55, 23199, 33, 32330, 85 }		--Totem of the Void, Totem of the Storm, Totem of Ancestral Guidance
	self.RelicSlot["Chain Lightning"] = { 28248, 55, 23199, 33, 32330, 85 }		--Totem of the Void, Totem of the Storm, Totem of Ancestral Guidance
	
	
	--Auras
	self.HealingBuffs["Healing Way"] = { Spell = BS["Healing Wave"], ModType = "Special" }	
	self.PlayerAura["Elemental Mastery"] = { School = { "Nuke", "Shock" }, Value = 100, ModType = "Crit" }
	self.PlayerAura["Wave Trance"] = { Value = -0.85, ModType = "CastTime", Spell = BS["Healing Wave"], }	


	self.spellInfo = {
		[BS["Lightning Shield"]] = {
						[0] = { School = "Nature", Instant = true, bonusFactor = 0.805, sHits = 3, NoDPS = true, NoDoom = true, NoDownRank = true, },
						[1] = { 13, 13, spellLevel = 8, },
						[2] = { 29, 29, spellLevel = 16, },
						[3] = { 51, 80, spellLevel = 24, },
						[4] = { 80, 80, spellLevel = 32, },
						[5] = { 114, 114, spellLevel = 40, },
						[6] = { 154, 154, spellLevel = 48, },
						[7] = { 198, 198, spellLevel = 56, },
						[8] = { 232, 232, spellLevel = 63, },
						[9] = { 287, 287, spellLevel = 70, },
		},	
		[BS["Lightning Bolt"]] = {
						[0] = { School = { "Nature", "Nuke" }, canCrit = true, castTime = 2.5, bonusFactor = 0.794, CastMod = 0.1, BaseIncrease = true, LevelIncrease = 5, },
						[1] = { 13, 15, 2, 2, spellLevel = 1, castTime = 1.5, },
						[2] = { 26, 30, 2, 3, spellLevel = 8, castTime = 2, },
						[3] = { 45, 53, 3, 4, spellLevel = 14, castTime = 2.5, },
						[4] = { 83, 95, 5, 5, spellLevel = 20, },
						[5] = { 125, 143, 6, 6, spellLevel = 26, },
						[6] = { 172, 194, 7, 8, spellLevel = 32, },
						[7] = { 227, 255, 8, 9, spellLevel = 38, },
						[8] = { 282, 316, 9, 10, spellLevel = 44, },
						[9] = { 347, 389, 10, 11, spellLevel = 50, },
						[10] = { 419, 467, 12, 12, spellLevel = 56, }, 
						[11] = { 495, 565, 10, 12, spellLevel = 62, }, 
						[12] = { 563, 643, 8, 9, spellLevel = 67, },
		},
		[BS["Chain Lightning"]] = {
						[0] = { School = { "Nature", "Nuke" }, canCrit = true, castTime = 2, bonusFactor = 0.641, CastMod = 0.1, Cooldown = 6, chainFactor = 0.7, BaseIncrease = true, LevelIncrease = 7 },
						[1] = { 191, 217, 9, 10, spellLevel = 32, },
						[2] = { 277, 311, 11, 12, spellLevel = 40, },
						[3] = { 378, 424, 13, 14, spellLevel = 48, },
						[4] = { 493, 551, 15, 16, spellLevel = 56, },
						[5] = { 603, 687, 17, 18, spellLevel = 63, },
						[6] = { 734, 838, 0, 0, spellLevel = 70, },
						--Check LevelIncrease
		},
		[BS["Earth Shock"]] = {
						[0] = { School = { "Nature", "Shock" }, Instant = true, canCrit = true, Cooldown = 6, sFactor = 0.90, BaseIncrease = true, LevelIncrease = 5 },
						[1] = { 17, 19, 2, 3, spellLevel = 4, },
						[2] = { 32, 34, 3, 4, spellLevel = 8, },
						[3] = { 60, 64, 5, 5, spellLevel = 14, },
						[4] = { 119, 127, 7, 7, spellLevel = 24, },
						[5] = { 225, 239, 10, 10, spellLevel = 36, },
						[6] = { 359, 381, 13, 13, spellLevel = 48, }, 
						[7] = { 517, 545, 15, 16, spellLevel = 60, },
						[8] = { 658, 692, 3, 4, spellLevel = 69, },
		},
		[BS["Flame Shock"]] = {
						[0] = { School = { "Fire", "Shock" }, Instant = true, canCrit = true, Cooldown = 6, eDuration = 12, sTicks = 3, sFactor = 0.5, BaseIncrease = true, LevelIncrease = 5, Downrank = 1 },
						[1] = { 21, 21, 4, 4, hybridDotDmg = 28, spellLevel = 10, },
						[2] = { 45, 45, 6, 6, hybridDotDmg = 49, spellLevel = 18, },
						[3] = { 86, 86, 8, 9, hybridDotDmg = 96, spellLevel = 28, },
						[4] = { 152, 152, 10, 11, hybridDotDmg = 168, spellLevel = 40, },
						[5] = { 230, 230, 14, 15, hybridDotDmg = 256, spellLevel = 52, },
						[6] = { 309, 309, 24, 25, hybridDotDmg = 344, spellLevel = 60, },
						[7] = { 377, 377, 0, 0, hybridDotDmg = 420, spellLevel = 70, },
						--NOTE: Downrank +1 -> exception
		},
		[BS["Frost Shock"]] = {
						[0] = { School = { "Frost", "Shock" }, Instant = true, canCrit = true, Cooldown = 6, sFactor = 0.90, BaseIncrease = true, LevelIncrease = 5, Downrank = 1, },
						[1] = { 89, 95, 6, 6, spellLevel = 20, },
						[2] = { 206, 220, 9, 10, spellLevel = 34, },
						[3] = { 333, 353, 12, 13, spellLevel = 46, },
						[4] = { 486, 514, 15, 15, spellLevel = 58, },
						[5] = { 640, 676, 7, 7, spellLevel = 68, },
						--NOTE: Downrank: +1 -> exception
		},		
		[BS["Searing Totem"]] = {
						[0] = { School = { "Fire", "OffensiveTotem" }, Instant = true, sHits = true, eDot = true, canCrit = true, NoDownRank = true, },
						[1] = { 9, 11, spellLevel = 10, eDuration = 30, sHits = 12, },
						[2] = { 13, 17, spellLevel = 20, eDuration = 35, sHits = 14, },
						[3] = { 19, 25, spellLevel = 30, eDuration = 40, sHits = 16, },
						[4] = { 26, 34, spellLevel = 40, eDuration = 45, sHits = 18, },
						[5] = { 33, 45, spellLevel = 50, eDuration = 50, sHits = 20, },
						[6] = { 40, 54, spellLevel = 60, eDuration = 55, sHits = 22, },
						[7] = { 50, 66, spellLevel = 69, eDuration = 60, sHits = 24, }, 
		},
		[BS["Fire Nova Totem"]] = {
						[0] = { School = { "Fire", "OffensiveTotem" }, Instant = true, canCrit = true, sFactor = 1/2, Cooldown = 15, BaseIncrease = true, NoDownRank = true, LevelIncrease = 9 },
						[1] = { 48, 56, 5, 6, spellLevel = 12, },
						[2] = { 102, 116, 8, 8, spellLevel = 22, },
						[3] = { 184, 208, 11, 11, spellLevel = 32, },
						[4] = { 281, 317, 14, 14, spellLevel = 42, },
						[5] = { 396, 442, 17, 17, spellLevel = 52, },
						[6] = { 518, 578, 19, 20, spellLevel = 61, },
						[7] = { 654, 730, 0, 0, spellLevel = 70, },
						--Check LevelIncrease
		},
		[BS["Magma Totem"]] = {
						[0] = { School = { "Fire", "OffensiveTotem" }, Instant = true, canCrit = true, eDot = true, eDuration = 20, sHits = 10, sFactor = 1/2, NoDownRank = true, },
						[1] = { 22, 22, spellLevel = 26, },
						[2] = { 37, 37, spellLevel = 36, },
						[3] = { 54, 54, spellLevel = 46, },
						[4] = { 75, 75, spellLevel = 56, },
						[5] = { 97, 97, spellLevel = 67, },
		},		
		[BS["Lesser Healing Wave"]] = {
						[0] = { School = { "Nature", "Healing", }, canCrit = true, BaseIncrease = true, LevelIncrease = 5 },
						[1] = { 162, 186, 8, 9, spellLevel = 20, },
						[2] = { 247, 281, 10, 11, spellLevel = 28, },
						[3] = { 337, 381, 12, 13, spellLevel = 36, },
						[4] = { 458, 514, 15, 15, spellLevel = 44, },
						[5] = { 631, 705, 18, 18, spellLevel = 52, },
						[6] = { 832, 928, 21, 21, spellLevel = 60, },
						[7] = { 1039, 1185, 12, 13, spellLevel = 66, },
		},
		[BS["Healing Wave"]] = {
						[0] = { School = { "Nature", "Healing", }, canCrit = true, castTime = 3, CastMod = 0.1, BaseIncrease = true, LevelIncrease = 5 },
						[1] = { 34, 44, 2, 3, spellLevel = 1, castTime = 1.5, Downrank = -2 },
						[2] = { 64, 78, 5, 5, spellLevel = 6, castTime = 2.0, },
						[3] = { 129, 155, 7, 8, spellLevel = 12, castTime = 2.5, },
						[4] = { 268, 316, 11, 12, spellLevel = 18, },
						[5] = { 376, 440, 13, 14, spellLevel = 24, },
						[6] = { 536, 622, 16, 17, spellLevel = 32, },
						[7] = { 740, 854, 19, 20, spellLevel = 40, },
						[8] = { 1017, 1167, 23, 24, spellLevel = 48, },
						[9] = { 1367, 1561, 27, 28, spellLevel = 56, },
						[10] = { 1620, 1850, 27, 28, spellLevel = 60, },
						[11] = { 1725, 1969, 31, 32, spellLevel = 63, },
						[12] = { 2134, 2436, 0, 0, spellLevel = 70, },
		},
		[BS["Chain Heal"]] = {
						[0] = { School = { "Nature", "Healing", }, canCrit = true, castTime = 2.5, chainFactor = 0.5, BaseIncrease = true, LevelIncrease = 5 },
						[1] = { 320, 368, 12, 13, spellLevel = 40, },
						[2] = { 405, 465, 14, 14, spellLevel = 46, },
						[3] = { 551, 629, 16, 17, spellLevel = 54, },
						[4] = { 605, 691, 19, 19, spellLevel = 61, },
						[5] = { 826, 942, 7, 8, spellLevel = 68, },
		},
		[BS["Healing Stream Totem"]] = {
						[0] = { School = { "Nature", "Healing", }, Instant = true, eDot = true, eDuration = 120, sHits = 60, sFactor = 1/3 * 0.99, NoDownRank = true, },
						[1] = { 6, 6, spellLevel = 20, }, 
						[2] = { 8, 8, spellLevel = 30, },
						[3] = { 10, 10, spellLevel = 40, },
						[4] = { 12, 12, spellLevel = 50, },
						[5] = { 14, 14, spellLevel = 60, },
						[6] = { 18, 18, spellLevel = 69, },
		},
		[BS["Earth Shield"]] = {
						[0] = { School = { "Nature", "Healing", }, Instant = true, canCrit = true, sHits = 10, bonusFactor = 10/3.5, NoDPS = true, NoDoom = true, NoDebuffs = true, NoDownRank = true, },
						[1] = { 150, 150, spellLevel = 50, },
						[2] = { 205, 205, spellLevel = 60, },
						[3] = { 270, 270, spellLevel = 70, },
		},
		[BS["Gift of the Naaru"]] = {
						[0] = { School = { "Holy", "Healing" }, Cooldown = 180, eDot = true, eDuration = 15, sTicks = 3, bonusFactor = 1, BaseIncrease = true, NoLowLevelPenalty = true, NoDownRank = true, },
						["None"] = { 50, 50, 1035, 1035, spellLevel = 1, },
		},
		[BS["Stormstrike"]] = {
						[0] = { Melee = true, Cooldown = 10, DualAttack = true, WeaponDamage = 1 },
						["None"] = { 0 },
		},
	}
	self.talentInfo = { 
		["Concussion"] = { 			[1] = { Effect = 0.01, Spells = { "Nuke", "Shock" }, }, },
		["Call of Flame"] = { 			[1] = { Effect = 0.05, Spells = "OffensiveTotem" }, },
		["Call of Thunder"] = { 		[1] = { Effect = { 1, 2, 3, 4, 6 } , Spells = "Nuke", ModType = "Crit", }, },
		["Elemental Focus"] = { 		[1] = { Effect = 0.8, Spells = { "Nuke", "Shock" }, ModType = "FreeCrit" }, },
		["Lightning Mastery"] = { 		[1] = { Effect = 1, Spells = "Nuke", ModType = "CastTime", }, },
		["Elemental Fury"] = { 			[1] = { Effect = 0.5, Spells = { "Nuke", "Shock", "OffensiveTotem" }, ModType= "CritMultiplier", }, },
		["Elemental Precision"] = { 		[1] = { Effect = 2, Spells = { "Lightning Shield", "Nuke", "Shock", "OffensiveTotem", }, ModType = "Hit", }, },
		["Nature's Guidance"] = { 		[1] = { Effect = 1, Spells = "All", ModType = "Hit", }, },
		["Improved Lightning Shield"] = { 	[1] = { Effect = 0.05, Spells = "Lightning Shield", }, },
		["Tidal Mastery"] = { 			[1] = { Effect = 1, Spells = { "Healing", "Nuke" }, ModType = "Crit", }, },
		["Purification"] = { 			[1] = { Effect = 0.02, Spells = "Healing", },
							[2] = { Effect = 1, Spells = "Earth Shield", ModType = "BuffTalentRanks", },
		},
		["Improved Chain Heal"] = { 		[1] = { Effect = 0.10, Spells = "Chain Heal", }, },
		["Improved Healing Wave"] = { 		[1] = { Effect = 1, Spells = "Healing Wave", ModType = "CastTime" }, },
		["Restorative Totems"] = { 		[1] = { Effect = 0.05, Spells = "Healing Stream Totem", }, },
		["Reverberation"] = { 			[1] = { Effect = 0.2, Spells = "Shock", ModType = "Cooldown" }, },
		["Totemic Focus"] = {			[1] = { Effect = 1, Spells = "Totems", ModType = "None" }, },
		
		--Enhancement
		["Improved Weapon Totems"] = {		[1] = { Effect = 1, Spells = "All", Melee = true, ModType = "BuffTalentRanks" }, },
		["Dual Wield Specialization"] = {	[1] = { Effect = 2, Spells = "Attack", ModType = "Dual Wield Specialization" }, },
		["Elemental Weapons"] = {		[1] = { Effect = 1, Spells = "Attack", ModType = "BuffTalentRanks" }, },
		["Weapon Mastery"] = {			[1] = { Effect = 0.02, Spells = "All", Melee = true }, },
		["Thundering Strikes"] = {		[1] = { Effect = 1, Spells = "All", Melee = true, ModType = "Crit" }, },
	}
end