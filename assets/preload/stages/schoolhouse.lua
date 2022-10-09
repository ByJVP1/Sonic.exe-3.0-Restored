function onCreate()
	
	makeLuaSprite('empty schoolhouse', 'educator/empty schoolhouse', -550, -150);
	setLuaSpriteScrollFactor('empty schoolhouse', 1, 1);
	scaleObject('empty schoolhouse', 2.5, 2.5);
	setProperty('empty schoolhouse.antialiasing', false);
	addLuaSprite('empty schoolhouse', false);
	setProperty('empty schoolhouse.visible', true);
	
setProperty('empty schoolhouse.visible', true);
	makeLuaSprite('overlay', 'educator/overlay', -500, -250);
	setLuaSpriteScrollFactor('overlay', 0.9, 0.9);
	scaleObject('overlay', 2.5, 2.5);
	addLuaSprite('overlay', false);
	setProperty('overlay.visible', true);
	
makeLuaSprite('vegetape', 'educator/ojosTontitos', -550, -150);
	scaleObject('vegetape', 2.5, 2.5);
	setProperty('vegetape.antialiasing', false);
addLuaSprite('vegetape', false);
setProperty('vegetape.visible', false);
setPropertyFromClass('GameOverSubstate', 'characterName', 'gfMuerteFalsa'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd'); --put in mods/music/
end

function onStepHit()--Nickobelit Lo Hizo :0
if curStep == 1025 then
setProperty('empty schoolhouse.visible', false);
setProperty('overlay.visible', false);
setProperty('vegetape.visible', true);
end
if curStep == 1280 then
setProperty('empty schoolhouse.visible', true);
setProperty('overlay.visible', true);
setProperty('vegetape.visible', false);
end
if curStep == 1568 then
makeLuaSprite('BlackFlash', 'dablack', -700, 0);
	scaleObject('BlackFlash', 2,2);
	setProperty('BlackFlash.visible', true);
	addLuaSprite('BlackFlash', true);
end
if curStep == 1572 then
makeLuaSprite('ErrorWindows', 'bluscreen',0,0);
		scaleObject('ErrorWindows', 0.7,0.7);
		setObjectCamera('ErrorWindows', 'other')
		addLuaSprite('ErrorWindows', true);
end
end

