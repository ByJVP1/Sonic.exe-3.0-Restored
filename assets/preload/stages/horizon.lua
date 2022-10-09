function onCreate()
makeLuaSprite('borde','border',-100,-55)
  scaleObject('borde',1.12,1.1)  
  setObjectCamera('borde', 'camHUD')
addLuaSprite('borde',true)


	makeLuaSprite('elhorizonte','chaotix/horizon', -350, -500);
	addLuaSprite('elhorizonte', false)
	scaleObject('elhorizonte',6,6)  
	setProperty('elhorizonte.antialiasing',false)
	
	makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', false)
   makeLuaSprite('circle', 'StartScreens/Circle-horizon', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-horizon', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    setProperty("timeBar.color",getColorFromHex("FF0000"))
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-chaotix-death'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'chaotix-death'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'chaotix-loop'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'chaotix-retry'); --put in mods/music/
	end

function onStepHit()
if curStep == 800 then --Momento Transformación
        doTweenZoom('Change Camera Zoom', 'camGame', 1.7, 11, 'linear')
        doTweenAlpha('Character Visibility', 'elhorizonte', 0,4, 'quadIn');
        end
if curStep == 918 then
doTweenAlpha('Character Visibility', 'elhorizonte', 1,1, 'quadIn');
end
end