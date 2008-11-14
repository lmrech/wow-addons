local L = AceLibrary("AceLocale-2.2"):new("Quartz")
L:RegisterTranslations("ruRU", function()
	return {
["Quartz"] = "Quartz",
		["Latency"] = "Задержка",
		["Tradeskill Merge"] = "Cлияние умений",
		["Global Cooldown"] = "Глобальная перезарядка",
		["Buff"] = "Баффы",
		["Target"] = "Цель",
		["Pet"] = "Питомец",
		["Focus"] = "Фокус",
		["Player"] = "Игрок",
		["Mirror"] = "Зеркало",
		["Timer"] = "Таймер",
		["Swing"] = "Взмах",
		["Interrupt"] = "Прерывания",
		["Range"] = "Дистанция",
		["Flight"] = "Полет",
		
		["GCD"] = "ГКД",
		["Tradeskill"] = "Умения",
		
		-- Basic shared stuff
		["Above"] = "Выше",
		["Alpha"] = "Прозрачность",
		["Background"] = "Фон",
		["Below"] = "Ниже",
		["Border"] = "Граница",
		["Bottom"] = "Снизу",
		["Bottom Left"] = "Внизу слева",
		["Bottom Right"] = "Внизу справа",
		["Center"] = "В центре",
		["Colors"] = "Цвета",
		["Default"] = "По-умолчанию",
		["Down"] = "Низ",
		["Enable"] = "Активировать",
		["Font"] = "Шрифт",
		["Font Size"] = "Размер шрифта",
		["Free"] = "Свободное",
		["Full Text"] = "Полностью",
		["Gap"] = "Промежуток",
		["Height"] = "Высота",
		["Horizontal"] = "По горизонтали",
		["Left"] = "Слева",
		["Left (grow down)"] = "Слева (книзу)",
		["Left (grow up)"] = "Слева (кверху)",
		["None"] = "Отсутствует",
		["Number"] = "Число",
		["Outside"] = "Снаружи",
		["Right"] = "Справа",
		["Right (grow down)"] = "Справа (книзу)",
		["Right (grow up)"] = "Справа (кверху)",
		["Scale"] = "Масшатб",
		["Spacing"] = "Промежуток между полосами",
		["Texture"] = "Текстура",
		["Text Color"] = "Цвет текста",
		["Top"] = "Сверху",
		["Top Left"] = "Сверху слева",
		["Top Right"] = "Сверху справа",
		["Up"] = "Выше",
		["Vertical"] = "По вертикали",
		["X"] = "X",
		["Y"] = "Y",
		["Width"] = "Ширина",
		
		-- Option Names
		
		["Lock"] = "Закрепить",
		["Hide Icon"] = "Скрыть иконку",
		["Icon Alpha"] = "Прозрачность иконки",
		["Icon Gap"] = "Расстояние до иконки",
		["Name Text Position"] = "Положение названия",
		["Name Text Font Size"] = "Шрифт названия",
		["Spell Rank"] = "Отображать уровень заклинания",
		["Spell Rank Style"] = "Стиль уровня заклинания",
		["Hide Name Text"] = "Скрыть названия",
		["Hide Time Text"] = "Скрыть время",
		["Hide Cast Time"] = "Скрыть время каста",
		["Cast Time Precision"] = "Точность времени применения",
		["Time Font Size"] = "Шрифт времени",
		["Time Text Position"] = "Позиция времени",
		["Spell Text"] = "Заклинания",
		["Time Text"] = "Время",
		["Casting"] = "Приминение",
		["Channeling"] = "Направляемое",
		["Complete"] = "Законченный",
		["Failed"] = "Неудачный",
		["Spark Color"] = "Цвет вспышки",
		["Background Alpha"] = "Прозрачность фона",
		["Border Alpha"] = "Прозрачность границ",
		["Disable Blizzard Cast Bar"] = "Отключить полосу применения Blizzard'а",
		["Snap to Center"] = "Переместить в центр",
		["Icon Position"] = "Позиция иконки",
		["Text Alignment"] = "Выравнивание  текста",
		["Text Position"] = "Позиция текста",
		["Copy Settings From"] = "Скопировать настройки из",
		["Cast Start Side"] = "Сторона начала Броска",
		["Cast End Side"] = "Бросок и Сторона",
		["Name Text X Offset"] = "Текста названия, смещение по X",
		["Name Text Y Offset"] = "Текста названия, смещение по Y",
		["Time Text X Offset"] = "Текст времени, смещение по X",
		["Time Text Y Offset"] = "Текст времени, смещение по Y",
		["Hide Samwise Icon"] = "Скрыть тестовую иконку",
		["Show for Friends"] = "Отображать для друзей",
		["Show for Enemies"] = "Отображать для врагов",
		["Show if Target"] = "Отображать если цель",
		["Target Name"] = "Имя цели",
		["Display target name of spellcasts after spell name"] = "Отображать имя цели после названия заклинания",
		
		["Roman"] = "Романский",
		["Roman Full Text"] = "Романский полностью",
			--Latency
			["Embed"] = "Вставить",
			["Embed Safety Margin"] = "Вставляет метку надежности",
			["Bar Color"] = "Цвет полосы",
			["Show Text"] = "Отображать текст",
			--GCD
			["Primary"] = "Основное",
			["Backup"] = "Запасное",
			["%s Spell"] = "%s заклинание",
			["Bar Position"] = "Позиция полосы",
			["Deplete"] = "Уменьшение",
			--Buffs
			["Focus"] = "Фокус",
			["Target"] = "Цель",
			["Enable %s"] = "Включить %s",
			["Enable Buffs"] = "Показывать баффы",
			["Enable Debuffs"] = "Показывать дебаффы",
			["Position"] = "Позиция",
			["Offset"] = "Смещение",
			["Show Icons"] = "Показывать иконки",
			["Buff Bar Width"] = "Ширина полосы баффа",
			["Buff Bar Height"] = "Высота полосы баффа",
			["Buff Name Text"] = "Названия баффа",
			["Buff Time Text"] = "Время баффа",
			["Buff Color"] = "Цвет баффа",
			["Debuff Color"] = "Цвет дебаффа",
			["Debuffs by Type"] = "Дебаффы по типу",
			["Undispellable Color"] = "Цвет не снемающихся",
			["Curse Color"] = "Цвет проклятий",
			["Disease Color"] = "Цвет болезней",
			["Magic Color"] = "Цвет магических",
			["Poison Color"] = "Цвет ядов",
			["Anchor Frame"] = "Фрейм Якоря",
			["Grow Direction"] = "Направление роста",
			["Sort by Remaining Time"] = "Сортировать по оставшемуся времени",
			--Mirror
			["Mirror Bar Width"] = "Ширина полосы зеркала",
			["Mirror Bar Height"] = "Высота полосы зеркала",
			["Mirror Name Text"] = "Текст имени зеркала",
			["Mirror Time Text"] = "Текст времени зеркала",
			["Hide Blizz Mirror Bars"] = "Скрыть Blizz полосу зеркала",
			["%s Color"] = "%s Цвет",
			["Breath"] = "Дыхание",
			["Exhaustion"] = "Утомление",
			["Feign Death"] = "Притвориться мертвым",
			["Show Mirror"] = "Оторажать зеркало",
			["Show Static"] = "Оторажать статически",
			["Show PvP"] = "Оторажать PvP",
			--Timer
			["Stop Timer"] = "Остановить таймер",
			["Make Timer"] = "Создать таймер",
			["New Timer Name"] = "Имя нового таймера",
			["New Timer Length"] = "Протяженность нового таймера",
			--Swing
			["Duration Text"] = "Текст длительности",
			["Remaining Text"] = "Текст Оставшегося",
			--Interrupt
			["Interrupt Color"] = "Цвет прерываний",
			--Range
			["Out of Range Color"] = "Цвет \"Вне зоны досигаемости\"",
			--Flight
			["Flight Map Color"] = "Цвет полосы полета",
			
		-- Option descriptions
		
        ["Toggle Cast Bar lock"] = "Вкл/Выкл закрепление полосы применения",
		["Hide Spell Cast Icon"] = "Скрыть иконку заклинания",
		["Set the Spell Cast icon alpha"] = "Настроить прозрачность иконки заклинания",
		["Set where the Spell Cast icon appears"] = "Установить место, где будет появляться иконка заклинания",
		["Space between the cast bar and the icon."] = "Расстояние между полосой применения и иконкой заклинания",
		["Set the Cast Bar Texture"] = "Установить текстуру полосы применения",
		["Set the font used in the Name and Time texts"] = "Установить шрифт, используемый для отображения названия заклинания и времени каста",
		["Set the alignment of the spell name text"] = "Установить выравнивание по названию имени умения",
		["Set the size of the spell name text"] = "Установить размер текста, отображающего название заклинания",
		["Disable the text that displays the time remaining on your cast"] = "Отключить текст, отображающий оставшееся время применения",
		["Disable the text that displays the total cast time"] = "Отключить текст, отображающий общее время применения",
		["Set the precision (i.e. number of decimal places) for the cast time text"] = "Установить точность (до десятичных долей)для времени полосы применения",
		["Disable the text that displays the spell name/rank"] = "Не отображать название и уровень заклинания",
		["Display the rank of spellcasts alongside their name"] = "Показывает ранг применяемого заклинания рядом с его именем",
		["Set the display style of the spell rank"] = "Установить стиль отображения уровня залинания",
		["Set the size of the time text"] = "Установить размер текста, отображающего время",
		["Set the alignment of the time text"] = "Устанавливает выравнивание текста времени",
		["Set the border style"] = "Установить стиль границ",
		["Set the color of the %s"] = "Установить цвет %s",
		["Set the color of the cast bar when %s"] = "Установить цвет полосы применения, когда %s",
		["Set the color of the casting bar spark"] = "Установить цвет для вспышки полосы применения",
		["Set the color of the casting bar background"] = "Установить цвет фона полосы применения",
		["Set the alpha of the casting bar background"] = "Установить прозрачность фона полосы применения",
		["Set the color of the casting bar border"] = "Установить цвет границ полосы применения",
		["Set the alpha of the casting bar border"] = "Установить прозрачность границ полосы применения",
		["Disable and hide the default UI's casting bar"] = "Отключить стандартный полосы применения",
		["Move the CastBar to center of the screen along the specified axis"] = "Переместить полосу применения в центр экрана, в соответствии с выбранной координатной осью",
		["Select a bar from which to copy settings"] = "Выбрать настройки полосы для копирования",
		["Adjust the X position of the name text"] = "Регулировка X позиции, текста названия",
		["Adjust the Y position of the name text"] = "Регулировка Y позиции, текста названия",
		["Adjust the X position of the time text"] = "Регулировка X позиции, текста времени",
		["Adjust the Y position of the time text"] = "Регулировка Y позиции, текста времени",
		["Hide the icon for spells with no icon"] = "Скрыть иконку для заклинаний, не имеющих собственного изображения",
		["Show this castbar for friendly units"] = "Показывать эту полосу применения для дружественных целей",
		["Show this castbar for hostile units"] = "Показывать эту полосу применения для вражеских целей",
		["Show this castbar if focus is also target"] = "Показывать эту полосу применения, даже если цель в фокусе является текущей выбранной целью",
		["Set an exact X value for this bar's position."] = "Установить точное положение полосы применения по оси X",
		["Set an exact Y value for this bar's position."] = "Установить точное положение полосы применения по оси Y",
		
			--Latency
			["Include Latency time in the displayed cast bar."] = "Включает отображение времени задержки в полосе применения",
			["Embed mode will decrease it's lag estimates by this amount.  Ideally, set it to the difference between your highest and lowest ping amounts.  (ie, if your ping varies from 200ms to 400ms, set it to 0.2)"] = "Включает способ снижения лагов предположительно замеряя задержку (ее количество).  В идеале вы должны установить это в промежутке между навысшым и наинизшим значениме пинга. (то есть, если ваш пинг в дапозоне от 200мс до 400мс, установите 0.2)",
			["Latency Bar"] = "Полоса задержки",
			["Set the alpha of the latency bar"] = "Установить прозрачность для полосы задержки",
			["Display the latency time as a number on the latency bar"] = "Отображать задержку, как число на баре",
			["Set the font used for the latency text"] = "Установить шрифт текста задержки",
			["Set the size of the latency text"] = "Установить размер шрифта текста задежки",
			["Set the color of the latency text"] = "Установить цвет текста для задержки",
			["Set the position of the latency text"] = "Установить позицию текста задержки",
			["Set the vertical position of the latency text"] = "Установить вертикальную позицию задержки",
			--GCD
			["%s spell to check for the Global Cooldown"] = "%s - заклинание для проверки общей перезарядки",
			["Set the color of the GCD bar spark"] = "настройка цвета для ГКД вспыхиваещего бара",
			["Set the height of the GCD bar"] = "Установить высоту полосы ГКД",
			["Set the alpha of the GCD bar"] = "Установить прозрачность полосы ГКД",
			["Set the position of the GCD bar"] = "Установить позицию полосы ГКД",
			["Tweak the distance of the GCD bar from the cast bar"] = "Настроить дистанцию от полосы ГКД до полосы применения",
			["Reverses the direction of the GCD spark, causing it to move right-to-left"] = "Обратить направление заполнения полосы ГКД",
			--Buffs
			["Show buffs/debuffs for your %s"] = "Отображать бафф/дебаффы на вашем %s",
			["Show buffs for your %s"] = "Отображать баффы на вашем %s",
			["Show debuffs for your %s"] = "Отображать дебаффы на вашем %s",
			["Position the bars for your %s"] = "Позиция баров на вашем %s",
			["Tweak the vertical position of the bars for your %s"] = "Настроить вертикальную позицию баров для вашего %s",
			["Tweak the space between bars for your %s"] = "Настроить расстояние между барами для вашего %s",
			["Tweak the horizontal position of the bars for your %s"] = "Настроить горизотальную позицию баров для вашего %s",
			["Show icons on buffs and debuffs for your %s"] = "Отображать иконки баффов и дебаффов на вашем %s",
			["Set the side of the buff bar that the icon appears on"] = "С какой стороны отображать иконку баффа",
			["Set the buff bar Texture"] = "Назначить текстуру для полосы баффов",
			["Set the width of the buff bars"] = "Установить щирину полосы баффов",
			["Set the height of the buff bars"] = "Установить высоту полосы баффов",
			["Display the names of buffs/debuffs on their bars"] = "Отображать названия баффов/дебаффов на их барах",
			["Display the time remaining on buffs/debuffs on their bars"] = "Отображать оставшееся время для баффов/дебаффов на их барах",
			["Set the font used in the buff bars"] = "Установить шрифт для полосы баффов",
			["Set the font size for the buff bars"] = "Установить размер шрифта для полосы баффов",
			["Set the alpha of the buff bars"] = "Установить прозрачность для полосы баффов",
			["Set the color of the bars for buffs"] = "Установить цвет текста для полосы баффов",
			["Set the color of the bars for debuffs"] = "Установить цвет текста для полосы дебаффов",
			["Set the color of the text for the buff bars"] = "Установить цвет текста для полосы баффов",
			["Color debuff bars according to their dispel type"] = "Подсвечивать полосу дебаффов в соответствии с их типом",
			["Set the color of the bars for undispellable debuffs"] = "Установить цвет полос для неснимаемых дебаффов",
			["Set the color of the bars for curses"] = "Установить цвет полос проклятий",
			["Set the color of the bars for diseases"] = "Установить цвет полос болезней",
			["Set the color of the bars for magic"] = "Установить цвет полос магическиз недугов",
			["Set the color of the bars for poisons"] = "Установить цвет полос ядов",
			["Select where to anchor the %s bars"] = "Выбрать якорь для полос %s",
			["Toggle %s bar lock"] = "Вкл/Выкл блокировку бара %s",
			["Set the grow direction of the %s bars"] = "Установить направление роста полосы %s",
			["Sort the buffs and debuffs by time remaining.  If unchecked, they will be sorted alphabetically."] = "Сортировать баффы и дебаффы по оставшемуся времени действия. Иначе, они сортируются по алфавиту.",
			--Mirror
			["Position the mirror bars"] = "Позиция полос зеркала",
			["Tweak the vertical position of the mirror bars"] = "Настройка вертикальной позиции зеркальных полос",
			["Tweak the space between mirror bars"] = "Настройка расстояний между зеркальными полосами",
			["Tweak the horizontal position of the mirror bars"] = "Настройка горизонтальной позиции для зеркальных полос",
			["Show icons on mirror bars"] = "Показать иконку для зеркальных полос",
			["Set the side of the mirror bar that the icon appears on"] = "Устанавливает  сторону зеркального бара на которой надо отображать иконку",
			["Set the mirror bar Texture"] = "Установить текстуру зеркальной полосы",
			["Set the width of the mirror bars"] = "Установить ширину зеркальной полосы",
			["Set the height of the mirror bars"] = "Установить высоту зеркальной полосыа",
			["Display the names of Mirror Bar Types on their bars"] = "Отображать названия типа зеркальной полосы на ее полосках",
			["Display the time remaining on mirror bars"] = "Отображать оставшееся время на зеркальной полоске",
			["Set the font used in the mirror bars"] = "Установить шрифт, используемый на зеркальной полоске",
			["Set the color of the text for the mirror bars"] = "Установить цвет текста для зеркальной полоски",
			["Set the font size for the mirror bars"] = "Установить размер шрифта для зеркальной полоски",
			["Set the alpha of the mirror bars"] = "Установить прозрачность зеркальной полосы",
			["Hide Blizzard's mirror bars"] = "Скрыть стандартные зеркальные полосы Blizzard'а",
			["Set the color of the bars for %s"] = "Установите цвет полос для %s",
			["Show mirror bars such as breath and feign death"] = "Покаывать такие полосы как дыхание и претворение мертвым",
			["Show bars for static popup items such as rez and summon timers"] = "Показывать полосы с таймером для неподвижных всплывающих предметов таких как возрождение и призыв",
			["Show bar for start of arena and battleground games"] = "Показывать полосу с отсчётом времени до начала игры на поле сражений и арене",
			["Select where to anchor the mirror bars"] = "Выберете где будет якорь зеркальной полосы",
			["Toggle mirror bar lock"] = "Вкл/Выкл блокировку зеркальных полос",
			["Set the grow direction of the mirror bars"] = "Установить направление роста зеркальных полос",
			--Timer
			["Make a new timer using the above settings.  NOTE: it may be easier for you to simply use the command line to make timers, /qt"] = "Создать новый таймер, используя вышеуказанные настройки. Заметьте, что создание таймера с помощью командной строки (/qt) может показаться удобнее",
			["Select a timer to stop"] = "Выберите таймер, который необходимо остановить",
			["Set a name for the new timer"] = "Введите название нового таймера",
			["Length of the new timer, in seconds"] = "Длительность нового таймера в секундах",
			--Swing
			["Set the color of the swing timer bar"] = "Установите цвет для полосы времени замаха (взмах оружием, натягивание тетивы, зарядка оружия)",
			["Set the height of the swing timer bar"] = "Установите высоту полосы времени замаха (взмах оружием, натягивание тетивы, зарядка оружия)",
			["Set the alpha of the swing timer bar"] = "Установите прозрачность полосы времени замаха (взмах оружием, натягивание тетивы, зарядка оружия)",
			["Set the position of the swing timer bar"] = "Установите позицию полосы времени замаха (взмах оружием, натягивание тетивы, зарядка оружия)",
			["Tweak the distance of the swing timer bar from the cast bar"] = "Настройка дистанции полосы времени замаха (взмах оружием, натягивание тетивы, зарядка оружия)",
			["Toggle display of text showing your total swing time"] = "Показывает на экране текст показывающий ваше общее время замаха (взмаха оружием, натягивание тетивы, зарядка оружия)",
			["Toggle display of text showing the time remaining until you can swing again"] = "Показывает на экране текст показывающий сколкьо времени осталось до того когда вы снова сможете замахнуться ( оружием, натяните тетиву, зарядите оружие)",
			--Interrupt
			["Set the color the cast bar is changed to when you have a spell interrupted"] = "Установка цвета полосы применения когда применяемое умение прерывается",
			--Range
			["Set the color to turn the cast bar when the target is out of range"] = "Установка цвета полосы применения когда цель вне радиуса действия",
			--Flight
			["Set the color to turn the cast bar when taking a flight path"] = "Установка цвета полосы применения для полетов",
			
			-- Other crap
			["Rank (%d+)"] = "Уровень (%d+)",
			["Rank %s"] = "Уровень %s",
			--Latency
			["%dms"] = "%dмс",
			--GCD
			["<Spell Name>"] = "<Название заклинания>",
			["Invalid Spell"] = "Неверное заклинание",
			["Spell_Warning"] = "|cffff3333Внимание: Вы не выбрали заклинание для модуля 'Глобальная перезарядка'. Пожалуйста, введите название заклинания в меню (наберите /quartz, а затем кликните по разделу Глабальная перезарядка). Заметьте, что рекоммендуется использовать заклинание, которое не может быть прервано и не имеет другой перезарядки, кроме как глобальной - например, Поиск трав",
			--Buffs
			["%dm"] = "%dм",
			--Mirror
			["Logout"] = "Выход из системы",
			["Release"] = "Освобождение",
			["Logout"] = "Выход из системы",
			["Forfeit Duel"] = "Начало Дуэли",
			["Instance Boot"] = "Загрузка Подземелья",
			["Summon"] = "Призыв",
			["AOE Rez"] = "Масс Возр",
			["Quit"] = "Выход",
			["Resurrect"] = "Воскрешение",
			["Party Invite"] = "Приглашение в группу",
			["Resurrect Timer"] = "Таймер возрождения",
			["Duel Request"] = "Запрос Дуэли",
			["Game Start"] = "Начало боя",
			["1 minute"] = "1 минута",
			["One minute until"] = "1 минута до",
			["30 seconds"] = "30 секунд",
			["Thirty seconds until"] = "30 секунд до",
			["15 seconds"] = "15 секунд",
			["Fifteen seconds until"] = "15 секунд до",
			--Timer
			['Usage: /quartztimer timername 60 or /quartztimer 60 timername'] = "Используйте: /quartztimer имя_таймера 60 или /quartztimer 60 имя_таймера",
			["Timers module currently disabled, re-enable it in the menu"] = "Модуль таймеров отключен. Активировать их повторно из меню",
			["<Time in seconds>"] = "<Время в секундах>",
			--Swing
			--Interrupt
			["INTERRUPTED (%s)"] = "(%s) ПРЕРВАНО",
			--Range
			--Flight
			--FeatureFrame
			["Modular casting bar"] = "Модульная полоса применений",	
			}
end)
