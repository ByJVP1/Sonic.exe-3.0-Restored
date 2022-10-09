local BeatPorcent = 0
local BeatStyle = 0
local BeatStrentghGame = 0.02
local BeatStrentghHUD = 0.04

local Beated = false
function onCreate()
precacheImage('Phase3Static')
setProperty('cameraSpeed', 2);
    makeLuaSprite('stageN', 'tte/StageNormal', 300, 400)
    scaleObject('stageN', 1.3,1.3)
    addLuaSprite('stageN', false)
    setProperty('stageN.visible', true);

    makeAnimatedLuaSprite('bgx', 'tte/NewTitleMenuBG', 300, 300)
    addAnimationByPrefix('bgx', 'idle', 'TitleMenuSSBG instance ', 24, true)
    setScrollFactor('bgx', 0.8, 0.8)
    scaleObject('bgx', 6, 6)
    addLuaSprite('bgx', false)
    setProperty('bgx.visible', false);
    
    makeLuaSprite('stageX', 'tte/StageParaXeno', 350, 500)
    scaleObject('stageX', 1, 1)
    addLuaSprite('stageX', false)
    setProperty('stageX.visible', false);
    setProperty('gfGroup.visible', false);
    
    makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', false)
   makeLuaSprite('circle', 'StartScreens/Circle-triple-trouble', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-triple-trouble', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    
    addLuaScript('data/triple-trouble/scriptIntro')
    addLuaScript('data/triple-trouble/screenBeat')
    addLuaScript('data/triple-trouble/creditos')
    addLuaScript('data/triple-trouble/CameraTT')
    addLuaScript('data/triple-trouble/changeSplashNoteSonic')
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd'); --put in mods/music/
end

function onBeatHit()--Eventos Por Nickobelit aaaaaa
if curBeat == 1 then
doTweenColor('bar', 'timeBar', '666666', 0.0001, 'cubeOut')
end
if curBeat == 136 then
doTweenAlpha('Character Visibility', 'camGame',0,1, 'quadIn');
BeatPorcent = 0
end
if curBeat == 140 then
setProperty('camGame.alpha',1)
BeatPorcent = 1
end
    if curBeat == 268 then
        setProperty('stageN.visible', false);
        setProperty('bgx.visible', true);
        setProperty('stageX.visible', true);
        setProperty('defaultCamZoom', 0.75)
        doTweenColor('bar', 'timeBar', '290675', 1, 'cubeInOut')
    end
    if curBeat == 340 then
        setProperty('stageN.visible', true);
        setProperty('bgx.visible', false);
        setProperty('stageX.visible', false);
        setProperty('defaultCamZoom',0.7)
        doTweenColor('bar', 'timeBar', '660000', 1, 'cubeInOut')
    end
    if curBeat == 694 then
        setProperty('stageN.visible', false);
        setProperty('bgx.visible', true);
        setProperty('stageX.visible', true);
        setProperty('defaultCamZoom', 0.75)
        doTweenColor('bar', 'timeBar', '290675', 1, 'cubeInOut')
        setProperty('bgx.flipX', true)
        setProperty('stageX.flipX', true)
    end
    if curBeat == 822 then
        doTweenColor('bar', 'timeBar', '996600', 1, 'cubeInOut')
        setProperty('defaultCamZoom', 0.7)
       setProperty('stageN.visible', true);
        setProperty('bgx.visible', false);
        setProperty('stageX.visible', false);
        setCharacterX('boyfriend', 2400)
		setCharacterX('dad', 1150);
    end
    if curBeat == 834 then
setProperty('defaultCamZoom', 0.85)
end
if curBeat == 848 then
setProperty('defaultCamZoom', 0.7)
end
if curBeat == 862 then
setProperty('defaultCamZoom', 0.85)
end
if curBeat == 876 then
setProperty('defaultCamZoom', 0.7)
end
end

function onStepHit()
if curStep/4 % BeatPorcent == 0 then
        if BeatStyle == 0 then
            if Beated == false then
                Beated = true
                triggerEvent('Add Camera Zoom',BeatStrentghGame,BeatStrentghHUD)
            end
        elseif BeatStyle == 1 then
            if (curStep/4) % 4 ~= 0 then
                if  curStep/4 % BeatPorcent == 0 and Beated == false then
                    triggerEvent('Add Camera Zoom',BeatStrentghGame  * BeatValue,BeatStrentghHUD * BeatValue)
                    BeatValue = BeatValue * -1
                    Beated = true
                end
            else
                if (curStep/4) % BeatPorcent == 0 and Beated == false then
                    triggerEvent('Add Camera Zoom',BeatStrentghGame * BeatValue + (0.025 * BeatValue),BeatStrentghHUD * BeatValue + (0.03 * BeatValue))
                    BeatValue = BeatValue * -1
                    Beated = true
                end
            end
        end
    else
        Beated = false
    end
if curStep == 1 then
            BeatPorcent = 1
    end
if curStep == 1056 then
triggerEvent('trioStatic');--StaticXeno1
end
if curStep == 1200 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 1230 then
setProperty('defaultCamZoom', 0.75)
end
if curStep == 1345 then
triggerEvent('trioStatic');--StaticKnuckles
end
if curStep == 1360 then
triggerEvent('SonicJumpscare','2');
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
 noteTweenX('bfTween2', 5, 205, 0.01, 'linear'); 
noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
 noteTweenX('bfTween4', 7, 425, 0.01, 'linear'); 
noteTweenX('dadTween1', 0, 730, 0.01, 'linear'); 
noteTweenX('dadTween2', 1, 845, 0.01, 'linear');
 noteTweenX('dadTween3', 2, 955, 0.01, 'linear')
 noteTweenX('dadTween4', 3, 1065, 0.01, 'linear');
end
end
if curStep == 1487 then
doTweenAlpha('Character Visibility2', 'camGame',0,0.5, 'quadIn');
BeatPorcent = 0
end
if curStep == 1496 then
setProperty('camGame.alpha',1)
BeatPorcent = 1
end
if curStep == 2760 then
triggerEvent('trioStatic');--StaticXeno2
end
if curStep == 3274 then
triggerEvent('trioStatic');--StaticEgg
end
if curStep == 3288 then
triggerEvent('SonicJumpscare','3');
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenX('bfTween1', 4, 730, 0.3, 'linear');
 noteTweenX('bfTween2', 5, 845, 0.3, 'linear'); 
noteTweenX('bfTween3', 6, 955, 0.3, 'linear');
 noteTweenX('bfTween4', 7, 1065, 0.3, 'linear'); 
noteTweenX('dadTween1', 0, 90, 0.3, 'linear'); 
noteTweenX('dadTween2', 1, 205, 0.3, 'linear');
 noteTweenX('dadTween3', 2, 315, 0.3, 'linear')
 noteTweenX('dadTween4', 3, 425, 0.3, 'linear');
end
end
if curStep == 4815 then
setProperty('defaultCamZoom', 0.85);
end
if curStep == 4872 then
triggerEvent('trioStatic');--StaticXenoFinal
end
if curStep == 4879 then
setProperty('defaultCamZoom', 0.75);
end
if curStep == 4888 then
setProperty('bgx.visible', true)
        setProperty('stageX.visible', true)
      setProperty('bgx.flipX', false)
        setProperty('stageX.flipX', false)
        removeLuaSprite('stageN', true)
        doTweenColor('bar', 'timeBar', '290675', 1, 'cubeInOut')
    end
if curStep == 6076 then
doTweenAlpha('Character Visibility3', 'camGame',0,1, 'quadIn');
end
end

function opponentNoteHit()
    health = getProperty('health')   
    if getProperty('health') > 0.35 then
        setProperty('health', health- 0.015);
        end
end