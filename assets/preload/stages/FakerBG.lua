function onCreate()
   makeLuaSprite('circle', 'StartScreens/Circle-faker', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-faker', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    
 makeAnimatedLuaSprite('FakerBG', 'faker/FakerBG', -3500, -700); 
addAnimationByPrefix('FakerBG', 'anim', 'Idle', 10, true); 
  scaleObject('FakerBG', 3.5,3.5);
  addLuaSprite('FakerBG', false);
  
  makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', true)
    
   makeLuaSprite('circle', 'StartScreens/Circle-faker', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-faker', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    
  setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd'); --put in mods/music/
  end
function onBeatHit()
	objectPlayAnimation('FakerBG','anim',true)
end
function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 128 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 256 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 264 then
setProperty('defaultCamZoom', 0.6)
end
if curStep == 272 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 280 then
setProperty('defaultCamZoom', 0.7)
end
if curStep == 288 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 292 then
setProperty('defaultCamZoom', 0.7)
end
if curStep == 296 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 384 then
setProperty('defaultCamZoom', 0.7)
end
if curStep == 392 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 448 then
setProperty('defaultCamZoom', 0.7)
end
if curStep == 456 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 576 then
setProperty('defaultCamZoom', 0.7)
end
if curStep == 578 then
setProperty('defaultCamZoom', 0.75)
end
if curStep == 580 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 582 then
setProperty('defaultCamZoom', 0.85)
end
if curStep == 583 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 704 then
setProperty('defaultCamZoom', 0.7)
end
if curStep == 706 then
setProperty('defaultCamZoom', 0.75)
end
if curStep == 708 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 710 then
setProperty('defaultCamZoom', 0.85)
end
if curStep == 711 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 736 then
doTweenZoom('cam', 'camGame', 1.2,4.7, 'quadIn');
end
if curStep == 768 then
setProperty('defaultCamZoom', 0.75)
doTweenAlpha('HudFade', 'camHUD', 0,4, 'linear');
end
if curStep == 880 then
makeLuaSprite('BlackFlash', 'dablack', -700, 0);
		scaleObject('BlackFlash', 18, 22);
		addLuaSprite('BlackFlash', true)
end
end

