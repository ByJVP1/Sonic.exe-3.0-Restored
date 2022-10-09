function onCreate()

	makeLuaText('#', '   :', 0, 180, 630)
	addLuaText('#')
	setTextColor('#', 'FFFFFF')
	
	makeLuaText('-', '   :', 0, 150, 500)
	addLuaText('-')
	setTextColor('-', 'FFFFFF')
	
	makeLuaText('_', '   :', 0, 120, 565)
	addLuaText('_')
	setTextColor('_', 'FFFFFF')
	setObjectCamera('#', 'hud')
	setObjectCamera('-', 'hud')
	setObjectCamera('_', 'hud')
	
	setTextSize('_', 50)
	setTextSize('-', 50)
	setTextSize('#', 50)

	makeLuaSprite('timee', 'timee', 90.5, 585);
	setLuaSpriteScrollFactor('timee', 0, 0);
    setProperty('timee.scale.x', 3.8)
    setProperty('timee.scale.y', 3.8)
	setProperty('timee.antialiasing',false)

	addLuaSprite('timee', true);
		setObjectCamera('timee','hud')

	makeLuaSprite('missess', 'missess', 95.5, 650);
	setLuaSpriteScrollFactor('missess', 0, 0);
    setProperty('missess.scale.x', 3.8)
    setProperty('missess.scale.y', 3.8)
	setProperty('missess.antialiasing',false)

	addLuaSprite('missess', true);
		setObjectCamera('missess','hud')

	makeLuaSprite('scoree', 'scoree', 85.5, 520);
	setLuaSpriteScrollFactor('scoree', 0, 0);
    setProperty('scoree.scale.x', 3.8)
    setProperty('scoree.scale.y', 3.8)
	setProperty('scoree.antialiasing',false)

	addLuaSprite('scoree', true);
		setObjectCamera('scoree','hud')
		
		setProperty('scoreTxt.visible',false);
	setProperty("timeTxt.visible",false);
	setProperty("timeBar.visible",false);
	setProperty('timeBarBG.visible', false)
    setProperty('healthBar.x', 500)
	
end
function onUpdate(elapsed)
setTextString('#', ' :' .. getProperty('songMisses'))
setTextString('-', ' :' .. getProperty('songScore'))
setTextString('_', ' :' .. getTextString('timeTxt'))
if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
setProperty('healthBar.x', 330)
end
end