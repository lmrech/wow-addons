﻿local L = AceLibrary("AceLocale-2.2"):new("Quartz")
L:RegisterTranslations("koKR", function()
	return {
		["Quartz"] = "Quartz",
		["Latency"] = "지연 시간",
		["Tradeskill Merge"] = "전문 기술 병합",
		["Global Cooldown"] = "글로벌 쿨다운",
		["Buff"] = "버프",
		["Target"] = "대상",
		["Focus"] = "주시 대상",
		["Player"] = "플레이어",
		["Mirror"] = "미러",
		["Timer"] = "타이머",
		["Swing"] = "공격 속도",
		["Interrupt"] = "차단",
		["Range"] = "유효 거리",
		["Flight"] = "비행",
		
		["GCD"] = "GCD",
		["Tradeskill"] = "전문 기술",
		
		-- Basic shared stuff
		["Above"] = "위",
		["Alpha"] = "투명도",
		["Background"] = "배경",
		["Below"] = "아래",
		["Border"] = "테두리",
		["Bottom"] = "하단",
		["Bottom Left"] = "좌측 하단",
		["Bottom Right"] = "우측 하단",
		["Center"] = "가운데",
		["Colors"] = "색상",
		["Default"] = "기본",
		["Down"] = "아래로",
		["Enable"] = "사용",
		["Font"] = "글꼴",
		["Font Size"] = "글꼴 크기",
		["Free"] = "임의",
		["Full Text"] = "전체 글자",
		["Gap"] = "간격",
		["Height"] = "높이",
		["Horizontal"] = "수평",
		["Left"] = "좌측",
		["Left (grow down)"] = "좌측 (아래로 생성)",
		["Left (grow up)"] = "좌측 (위로 생성)",
		["None"] = "없음",
		["Number"] = "숫자",
		["Outside"] = "외부",
		["Right"] = "우측",
		["Right (grow down)"] = "우측 (아래로 생성)",
		["Right (grow up)"] = "우측 (위로 생성)",
		["Scale"] = "크기",
		["Spacing"] = "간격",
		["Texture"] = "무늬",
		["Text Color"] = "글자 색상",
		["Top"] = "상단",
		["Top Left"] = "좌측 상단",
		["Top Right"] = "우측 상단",
		["Up"] = "위로",
		["Vertical"] = "수직",
		["X"] = "X",
		["Y"] = "Y",
		["Width"] = "너비",
		
		-- Option Names
		
		["Lock"] = "고정",
		["Hide Icon"] = "아이콘 숨김",
		["Icon Alpha"] = "아이콘 투명도",
		["Icon Gap"] = "아이콘 간격",
		["Name Text Position"] = "이름 위치",
		["Name Text Font Size"] = "이름 글꼴 크기",
		["Spell Rank"] = "주문 레벨",
		["Spell Rank Style"] = "주문 레벨 형식",
		["Hide Name Text"] = "이름 숨김",
		["Hide Time Text"] = "시간 숨김",
		["Time Font Size"] = "시간 글꼴 크기",
		["Time Text Position"] = "시간 위치",
		["Spell Text"] = "주문명",
		["Time Text"] = "시간",
		["Casting"] = "캐스팅",
		["Channeling"] = "채널링",
		["Complete"] = "완료",
		["Failed"] = "실패",
		["Spark Color"] = "번쩍임 색상",
		["Background Alpha"] = "배경 투명도",
		["Border Alpha"] = "테두리 투명도",
		["Disable Blizzard Cast Bar"] = "블리자드 시전바 미사용",
		["Snap to Center"] = "가운데로 이동",
		["Icon Position"] = "아이콘 위치",
		["Text Alignment"] = "글자 정렬",
		["Text Position"] = "글자 위치",
		["Copy Settings From"] = "설정 복사",
		["Cast Start Side"] = "시전 시작 측면",
		["Cast End Side"] = "시전 종료 측면",
		["Name Text X Offset"] = "이름 글자 X 좌표",
		["Name Text Y Offset"] = "이름 글자 Y 좌표",
		["Time Text X Offset"] = "시간 글자 X 좌표",
		["Time Text Y Offset"] = "시전 글자 Y 좌표",
		["Hide Samwise Icon"] = "Samwise 아이콘 숨김",
		["Show for Friends"] = "우호적 대상 표시",
		["Show for Enemies"] = "적대적 대상 표시",
		["Target Name"] = "대상 이름",
		["Display target name of spellcasts after spell name"] = "주문 이름 뒤에 주문을 시전하는 대상의 이름을 표시합니다.",
		
		["Roman"] = "문자",
		["Roman Full Text"] = "전체 글자 문자",
			--Latency
			["Embed"] = "임베디드",
			["Embed Safety Margin"] = "임베디드 안전성 마진",
			["Bar Color"] = "바 색상",
			["Show Text"] = "글자 표시",
			--GCD
			["Primary"] = "1차",
			["Backup"] = "보조",
			["%s Spell"] = "%s 주문",
			["Bar Position"] = "바 위치",
			["Deplete"] = "비움",
			--Buffs
			["Focus"] = "주시 대상",
			["Target"] = "대상",
			["Enable %s"] = "%s 사용",
			["Enable Buffs"] = "버프 사용",
			["Enable Debuffs"] = "디버프 사용",
			["Position"] = "위치",
			["Offset"] = "좌표",
			["Show Icons"] = "아이콘 표시",
			["Buff Bar Width"] = "버프바 너비",
			["Buff Bar Height"] = "버프바 높이",
			["Buff Name Text"] = "버프명",
			["Buff Time Text"] = "버프 시간",
			["Buff Color"] = "버프 색상",
			["Debuff Color"] = "디버프 색상",
			["Debuffs by Type"] = "종류별 디버프",
			["Undispellable Color"] = "해재 할수 없는 색상",
			["Curse Color"] = "저주 색상",
			["Disease Color"] = "질병 색상",
			["Magic Color"] = "마법 색상",
			["Poison Color"] = "독 색상",
			["Anchor Frame"] = "고정창",
			["Grow Direction"] = "생성 방향",
			["Sort by Remaining Time"] = "남은 시간에 의해 정렬",
			--Mirror
			["Mirror Bar Width"] = "미러바 너비",
			["Mirror Bar Height"] = "미러바 높이",
			["Mirror Name Text"] = "미러명 글씨",
			["Mirror Time Text"] = "미러 시간 글씨",
			["Hide Blizz Mirror Bars"] = "블리자드 미러바 숨김",
			["%s Color"] = "%s 색상",
			["Breath"] = "호흡",
			["Exhaustion"] = "피로도",
			["Feign Death"] = "죽은척하기",
			["Show Mirror"] = "미러 표시",
			["Show Static"] = "팝업 표시",
			["Show PvP"] = "PvP 표시",
			--Timer
			["Stop Timer"] = "타이머 멈춤",
			["Make Timer"] = "타이머 생성",
			["New Timer Name"] = "새로운 타이머 이름",
			["New Timer Length"] = "새로운 타이머 길이",
			--Swing
			["Duration Text"] = "지속시간 글자",
			["Remaining Text"] = "남은시간 글자",
			--Interrupt
			["Interrupt Color"] = "차단 색상",
			--Range
			["Out of Range Color"] = "유효 거리 색상",
			--Flight
			["Flight Map Color"] = "Flight Map 색상",
			
		-- Option descriptions
		
		["Toggle Cast Bar lock"] = "시전바를 고정하거나 이동합니다.",
		["Hide Spell Cast Icon"] = "주문 시전 아이콘을 숨깁니다.",
		["Set the Spell Cast icon alpha"] = "주문 시전 아이콘의 투명도를 설정합니다.",
		["Set where the Spell Cast icon appears"] = "주문 시전 아이콘을 표시할 위치를 설정합니다.",
		["Space between the cast bar and the icon."] = "시전바와 아이콘 사이의 간격입니다.",
		["Set the Cast Bar Texture"] = "시전바의 무늬를 설정합니다.",
		["Set the font used in the Name and Time texts"] = "이름과 시간에 사용할 글꼴을 설정합니다.",
		["Set the alignment of the spell name text"] = "주문명의 정렬을 설정합니다.",
		["Set the size of the spell name text"] = "주문명의 글씨 크기를 설정합니다.",
		["Disable the text that displays the time remaining on your cast"] = "시전 시 남은 시간 표시를 사용하지 않습니다.",
		["Disable the text that displays the spell name/rank"] = "주문명/레벨 표시를 사용하지 않습니다.",
		["Display the rank of spellcasts alongside their name"] = "주문의 이름 옆에 레벨을 표시합니다.",
		["Set the display style of the spell rank"] = "주문 레벨의 표시 형식을 설정합니다.",
		["Set the size of the time text"] = "시간의 글씨 크기를 설정합니다.",
		["Set the alignment of the time text"] = "시간의 정렬을 설정합니다.",
		["Set the border style"] = "테두리의 형태을 설정합니다.",
		["Set the color of the %s"] = "%s의 색상을 설정합니다.",
		["Set the color of the cast bar when %s"] = "%s 일 때 시전바의 색상을 설정합니다.",
		["Set the color of the casting bar spark"] = "시전바의 번쩍임 색상을 설정합니다.",
		["Set the color of the casting bar background"] = "시전바의 배경 색상을 설정합니다.",
		["Set the alpha of the casting bar background"] = "시전바의 배경 투명도를 설정합니다.",
		["Set the color of the casting bar border"] = "시전바의 테두리 색상을 설정합니다.",
		["Set the alpha of the casting bar border"] = "시전바의 테두리 투명도를 설정합니다.",
		["Disable and hide the default UI's casting bar"] = "기본 UI의 시전바를 사용하지 않습니다.",
		["Move the CastBar to center of the screen along the specified axis"] = "지정된 축을 기준으로 화면의 가운데로 시전바를 이동합니다.",
		["Select a bar from which to copy settings"] = "설정을 복사할 바를 선택합니다.",
		["Adjust the X position of the name text"] = "이름 글자의 X 좌표를 조절합니다.",
		["Adjust the Y position of the name text"] = "이름 글자의 Y 좌표를 조절합니다.",
		["Adjust the X position of the time text"] = "시간 글자의 X 좌표를 조절합니다.",
		["Adjust the Y position of the time text"] = "시간 글자의 Y 좌표를 조절합니다.",
		["Hide the icon for spells with no icon"] = "아이콘이 없는 주문에 대해 아이콘을 숨깁니다.",
		["Show this castbar for friendly units"] = "우호적 대상에 대한 시전바를 표시합니다.",
		["Show this castbar for hostile units"] = "적대적 대상에 대한 시전바를 표시합니다.",
		["Set an exact X value for this bar's position."] = "해당 바의 위치에 대해 정확한 X 좌표를 설정합니다.",
		["Set an exact Y value for this bar's position."] = "해당 바의 위치에 대해 정확한 Y 좌표를 설정합니다.",
		
			--Latency
			["Include Latency time in the displayed cast bar."] = "표시된 시전바에 지연 시간을 표시합니다.",
			["Embed mode will decrease it's lag estimates by this amount.  Ideally, set it to the difference between your highest and lowest ping amounts.  (ie, if your ping varies from 200ms to 400ms, set it to 0.2)"] = "임베디드 모드는 해당 수치에 의해 계산된 렉을 감소시킬 것 입니다.  보통, 핑 수치의 최고값과 최저값 사이의 차이값으로 설정합니다.  (예, 만약 핑 값이 200ms 에서 400ms 라면 ,0.2로 설정합니다.)",
			["Latency Bar"] = "지연 시간 바",
			["Set the alpha of the latency bar"] = "지연 시간 바의 투명도를 설정합니다.",
			["Display the latency time as a number on the latency bar"] = "지연 시간 바에 지연 시간을 수치로 표시합니다.",
			["Set the font used for the latency text"] = "지연 시간에 사용할 글씨의 글꼴을 설정합니다.",
			["Set the size of the latency text"] = "지연 시간 글씨의 크기를 설정합니다.",
			["Set the color of the latency text"] = "지연 시간 글씨의 색상을 설정합니다.",
			["Set the position of the latency text"] = "지연시간 글씨의 위치를 설정합니다.",
			["Set the vertical position of the latency text"] = "지연시간 글자의 수직 위치를 설정합니다.",
			--GCD
			["%s spell to check for the Global Cooldown"] = "글로벌 쿨다운 검사를 위한 %s 주문입니다.",
			["Set the color of the GCD bar spark"] = "GCD바의 번쩍임 색상을 설정합니다.",
			["Set the height of the GCD bar"] = "GCD바의 높이를 설정합니다.",
			["Set the alpha of the GCD bar"] = "GCD바의 투명도를 설정합니다.",
			["Set the position of the GCD bar"] = "GCD바의 위치를 설정합니다.",
			["Tweak the distance of the GCD bar from the cast bar"] = "시전바와 GCD바의 거리를 조절합니다.",
			["Reverses the direction of the GCD spark, causing it to move right-to-left"] = "오른쪽에서 왼쪽으로 이동하도록, GCD 번쩍임의 방향을 반전합니다.",
			--Buffs
			["Show buffs/debuffs for your %s"] = "당신의 %s 버프/디버프를 표시합니다.",
			["Show buffs for your %s"] = "당신의 %s에 대한 버프를 표시합니다.",
			["Show debuffs for your %s"] = "당신의 %s에 대한 디버프를 표시합니다.",
			["Position the bars for your %s"] = "당신의 %s에 대한 바의 위치입니다.",
			["Tweak the vertical position of the bars for your %s"] = "당신의 %s에 대한 바의 수직 위치를 조절합니다.",
			["Tweak the space between bars for your %s"] = "당신의 %s에 대한 바 사이의 간격을 설정합니다.",
			["Tweak the horizontal position of the bars for your %s"] = "당신의 %s에 대한 바의 수평 위치를 조절합니다.",
			["Show icons on buffs and debuffs for your %s"] = "당신의 %s에 대한 버프와 디버프에 아이콘을 표시합니다.",
			["Set the side of the buff bar that the icon appears on"] = "아이콘을 표시할 버프바의 위치를 설정합니다.",
			["Set the buff bar Texture"] = "버프바의 무늬를 설정합니다.",
			["Set the width of the buff bars"] = "버프바의 너비를 설정합니다.",
			["Set the height of the buff bars"] = "버프바의 높이를 설정합니다.",
			["Display the names of buffs/debuffs on their bars"] = "버프/디버프바의 이름을 표시합니다.",
			["Display the time remaining on buffs/debuffs on their bars"] = "버프/디버프바에 남은 시간을 표시합니다.",
			["Set the font used in the buff bars"] = "버프바에 사용할 글꼴을 설정합니다.",
			["Set the font size for the buff bars"] = "버프바에 대한 글꼴 크기를 설정합니다.",
			["Set the alpha of the buff bars"] = "버프바의 투명도를 설정합니다.",
			["Set the color of the bars for buffs"] = "버프에 대한 바의 색상을 설정합니다.",
			["Set the color of the bars for debuffs"] = "디버프에 대한 바의 색상을 설정합니다.",
			["Set the color of the text for the buff bars"] = "버프바에 대한 글씨의 색상을 설정합니다.",
			["Color debuff bars according to their dispel type"] = "해제 유형에 따른 디버프 바의 색상을 사용합니다.",
			["Set the color of the bars for undispellable debuffs"] = "해제 할 수 없는 디버프에 대한 바의 색상을 설정합니다.",
			["Set the color of the bars for curses"] = "저주에 대한 바의 색상을 설정합니다.",
			["Set the color of the bars for diseases"] = "질병에 대한 바의 색상을 설정합니다.",
			["Set the color of the bars for magic"] = "마법에 대한 바의 색상을 설정합니다.",
			["Set the color of the bars for poisons"] = "독에 대한 바의 색상을 설정합니다.",
			["Select where to anchor the %s bars"] = "%s바를 고정할 위치를 선택합니다.",
			["Toggle %s bar lock"] = "%s바의 고정을 전환합니다.",
			["Set the grow direction of the %s bars"] = "%s바의 생성 방향을 설정합니다.",
			["Sort the buffs and debuffs by time remaining.  If unchecked, they will be sorted alphabetically."] = "남은 시간에 의해 버프와 디버프를 정렬합니다. 선택 해제시 알파벳순으로 정렬합니다.",
			--Mirror
			["Position the mirror bars"] = "미러바 위치",
			["Tweak the vertical position of the mirror bars"] = "미러바의 수직 위치를 조절합니다.",
			["Tweak the space between mirror bars"] = "미러바 사이의 간격을 조절합니다.",
			["Tweak the horizontal position of the mirror bars"] = "미러바의 수평 위치를 조절합니다.",
			["Show icons on mirror bars"] = "미러바에 아이콘 표시",
			["Set the side of the mirror bar that the icon appears on"] = "미러바에서 아이콘을 표시할 위치를 설정합니다.",
			["Set the mirror bar Texture"] = "미러바의 무늬를 설정합니다.",
			["Set the width of the mirror bars"] = "미러바의 너비를 설정합니다.",
			["Set the height of the mirror bars"] = "미러바의 높이를 설정합니다.",
			["Display the names of Mirror Bar Types on their bars"] = "미러바에 종류명을 표시합니다.",
			["Display the time remaining on mirror bars"] = "미러바에 남은 시간을 표시합니다.",
			["Set the font used in the mirror bars"] = "미러바에 사용할 글꼴을 설정합니다.",
			["Set the color of the text for the mirror bars"] = "미러바에 대한 글씨의 색상을 설정합니다.",
			["Set the font size for the mirror bars"] = "미러바에 대한 글꼴 크기를 설정합니다.",
			["Set the alpha of the mirror bars"] = "미러바의 투명도를 설정합니다.",
			["Hide Blizzard's mirror bars"] = "블리자드의 미러바를 숨깁니다.",
			["Set the color of the bars for %s"] = "%s에 대한 바의 색상을 설정합니다.",
			["Show mirror bars such as breath and feign death"] = "호흡과 죽은척하기 같은 미러바를 표시합니다.",
			["Show bars for static popup items such as rez and summon timers"] = "부활과 소환 타이머 같은 고정 팝업에 대한 바를 표시합니다.",
			["Show bar for start of arena and battleground games"] = "투기장과 전장 게임의 시작에 대한 바를 표시합니다.",
			["Select where to anchor the mirror bars"] = "미러바를 고정할 위치를 선택합니다.",
			["Toggle mirror bar lock"] = "미러바의 고정을 전환합니다.",
			["Set the grow direction of the mirror bars"] = "미러바의 생성 방향을 설정합니다.",
			--Timer
			["Make a new timer using the above settings.  NOTE: it may be easier for you to simply use the command line to make timers, /qt"] = "설정에 사용할 새로운 타이머를 생성합니다.  노트: /qt 명령어로 간단히 타이머 생성을 할 수 있습니다.",
			["Select a timer to stop"] = "멈출 타이머를 선택합니다.",
			["Set a name for the new timer"] = "새로운 타이머에 대한 이름을 설정합니다.",
			["Length of the new timer, in seconds"] = "새로운 타이머의 길이입니다. 초단위",
			--Swing
			["Set the color of the swing timer bar"] = "공격 속도 바의 색상을 설정합니다.",
			["Set the height of the swing timer bar"] = "공격 속도 바의 높이를 설정합니다.",
			["Set the alpha of the swing timer bar"] = "공격 속도 바의 투명도를 설정합니다.",
			["Set the position of the swing timer bar"] = "공격 속도 바의 위치를 설정합니다.",
			["Tweak the distance of the swing timer bar from the cast bar"] = "시전바에서 공격 속도 바의 거리를 조절합니다.",
			["Toggle display of text showing your total swing time"] = "당신의 전체 공격 속도를 표시하거나 숨깁니다.",
			["Toggle display of text showing the time remaining until you can swing again"] = "당신이 다음 공격할 수 있을 때 까지 남은 시간을 표시하거나 숨깁니다.",
			--Interrupt
			["Set the color the cast bar is changed to when you have a spell interrupted"] = "주문이 차단 되었을 때 변경할 시전바의 색상을 설정합니다.",
			--Range
			["Set the color to turn the cast bar when the target is out of range"] = "대상이 유효 거리 밖일 때 변경할 시전바의 색상을 설정합니다. ",
			--Flight
			["Set the color to turn the cast bar when taking a flight path"] = "비행 시 사용할 시전바의 색상을 설정합니다.",
			
		-- Other crap
		["Rank (%d+)"] ="(%d+) 레벨",
		["Rank %s"] = "%s 레벨",
			--Latency
			["%dms"] = "%dms",
			--GCD
			["<Spell Name>"] = "<주문명>",
			["Invalid Spell"] = "잘못된 주문",
			["Spell_Warning"] = "|cffff3333경고: Quartz의 글로벌 쿨다운 모듈을 위해 선택된 주문이 없습니다.  메뉴에서 주문명을 입력하세요 (/quartz를 입력하고 글로벌 쿨다운을 클릭하세요). 주의, 약초 찾기 같은 글로벌 쿨다운 이외의 쿨다운을 가지지 않고 차단되지 않는 주문을 사용하기를 권장합니다.",
			--Buffs
			["%dm"] = "%d분",
			--Mirror
			["Logout"] = "접속종료",
			["Release"] = "해제",
			["Logout"] = "접속종료",
			["Forfeit Duel"] = "결투 몰수패",
			["Instance Boot"] = "인스턴스 순간이동", -- check
			["Summon"] = "소환",
			["AOE Rez"] = "단체 부활",
			["Quit"] = "종료",
			["Resurrect"] = "부활",
			["Party Invite"] = "파티 초대",
			["Resurrect Timer"] = "부활 타이머",
			["Duel Request"] = "결투 신청",
			["Game Start"] = "게임 시작",
			["1 minute"] = "1분",
			["One minute until"] = "1분 전",
			["30 seconds"] = "30초",
			["Thirty seconds until"] = "30초 전",
			["15 seconds"] = "15초",
			["Fifteen seconds until"] = "15초 전",
			--Timer
			['Usage: /quartztimer timername 60 or /quartztimer 60 timername'] = "사용법: /quartztimer 타이머명 60 혹은 /quartztimer 60 타이머명",
			["Timers module currently disabled, re-enable it in the menu"] = "타이머 모듈을 사용 중이 아닙니다, 메뉴에서 활성화 하세요.",
			["<Time in seconds>"] = "<초단위 시간>",
			--Swing
			--Interrupt
			["INTERRUPTED (%s)"] = "차단됨 (%s)",
			--Range
			--Flight
	}
end)
