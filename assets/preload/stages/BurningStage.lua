function onCreate()
setProperty('skipCountdown', true);
	makeLuaSprite('BG', 'burning/stageNormal', -700, -500);
	addLuaSprite('BG', false);
	scaleObject('BG', 1.5,1.5);
	setProperty('BG.visible', true);
	
	makeLuaSprite('exeBG', 'burning/stageExe', -700, -500);
	addLuaSprite('exeBG', false);
	scaleObject('exeBG', 1.5,1.5);
	setProperty('exeBG.visible', false);
	
	makeLuaSprite('BlackFlash', 'dablack', -700, -300);
		scaleObject('BlackFlash', 3, 3);
		addLuaSprite('BlackFlash', true)
		setProperty('BlackFlash.alpha', 1);
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd'); --put in mods/music/
	end

function onSongStart()
doTweenAlpha('Character Visibility', 'BlackFlash', 0,7, 'quadIn');
end

function onStepHit()--Nickobelit Lo Hizo :0
if curStep == 384 then
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 640 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 688 then
triggerEvent('Flash Camera',1.5)
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 704 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 896 then
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 1152 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 1392 then
triggerEvent('Flash Camera',1.5)
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 1408 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 1527 then
setProperty('defaultCamZoom',1);
doTweenAlpha('Character Visibility', 'BG', 0,0.5, 'quadIn');
end
if curStep == 1536 then
setProperty('defaultCamZoom',0.6);
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 1660 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('BG.alpha', 1);
setProperty('exeBG.visible', false);
end
if curStep == 1680 then
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 1692 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 1700 then
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 1704 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 1708 then
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 1718 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 1800 then
triggerEvent('Flash Camera',1.5)
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 1824 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 1842 then
triggerEvent('Flash Camera',1.5)
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 1856 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
if curStep == 1920 then
setProperty('exeBG.visible', true);
setProperty('BG.visible', false);
end
if curStep == 2048 then
triggerEvent('Flash Camera',1.5)
setProperty('BG.visible', true);
setProperty('exeBG.visible', false);
end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.02);
    end
end