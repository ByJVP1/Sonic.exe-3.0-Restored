function onCreate()
 makeAnimatedLuaSprite('GodBG', 'faker/GodspeedBG', -3500, -950); 
addAnimationByPrefix('GodBG', 'anim', 'Idle', 10, true); 
  scaleObject('GodBG', 3.5,3.5);
  addLuaSprite('GodBG', false);
  setProperty('cameraSpeed', 2.2);
  setProperty('health', 2);
  setPropertyFromClass('GameOverSubstate', 'characterName', 'muerteEXE'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'intro1'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Exe_die'); --put in mods/music/
  end
function onBeatHit()
	objectPlayAnimation('GodBG','anim',true)
end
function opponentNoteHit()
cameraShake('game', 0.01, 0.1)
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.02);
    end
end
function onSongStart()
setProperty('timeBar.color', getColorFromHex('ff0015'))
	noteTweenX("NoteMove1", 0, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove2", 1, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove3", 2, -1000, 0.5, cubeInOut)
	noteTweenX("NoteMove4", 3, -1000, 0.5, cubeInOut)
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
        setProperty('defaultCamZoom',0.95);
	elseif focus == 'dad' then
        setProperty('defaultCamZoom',0.65);
	end
end