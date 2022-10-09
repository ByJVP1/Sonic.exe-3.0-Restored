function onCreate()
 makeAnimatedLuaSprite('ExeBG', 'faker/EXBg', -3500, -700); 
addAnimationByPrefix('ExeBG', 'anim', 'Idle', 10, true); 
  scaleObject('ExeBG', 3.5,3.5);
  addLuaSprite('ExeBG', false);
  setProperty('health', 2);
  setProperty('cameraSpeed', 2.2);
  setPropertyFromClass('GameOverSubstate', 'characterName', 'muerteEXE'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'intro1'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Exe_die'); --put in mods/music/
  end
function onBeatHit()
	objectPlayAnimation('ExeBG','anim',true)
end

function goodNoteHit()
	health = getProperty('health')
	if getProperty('health') > 0 then
        setProperty('health', health - 0.0223);
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
        setProperty('defaultCamZoom',0.6);
	end
end

function onEndSong()
local allowCountdownEnd = false;
local allowCountdown = false;

if not allowEnd and isStoryMode then
loadSong('godspeed', hard);
allowEnd = true;
return Function_Stop;
end
end