function onCreate()
precacheImage('hitStatic')
makeLuaSprite('Intro', 'TooSlowStage/FirstEncoreBG', -950, -600);
	addLuaSprite('Intro',false)
	scaleObject('Intro',1.2,1.2)
    makeLuaSprite('TooSlowStage','TooSlowStage/StageWooHoHo',-1000,-350)
    scaleObject('TooSlowStage',1.405,1.405)
    
    makeLuaSprite('blackBorderLyrics1','',0,-170)
    makeLuaSprite('blackBorderLyrics2','',0,720)
    
    makeAnimatedLuaSprite('animacionGod', 'TooSlowStage/iamgod',-450,30)
    addAnimationByPrefix('animacionGod', 'idle', 'omfg',24, false)
    scaleObject('animacionGod',1.9,1.9)

    for blackBorders = 1,2 do
        makeGraphic('blackBorderLyrics'..blackBorders,screenWidth,170,'000000')
        setObjectCamera('blackBorderLyrics'..blackBorders,'other')
        addLuaSprite('blackBorderLyrics'..blackBorders,true)
        
        makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', true)
    
   makeLuaSprite('circle', 'StartScreens/Circle-too-slow', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-too-slow', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    setProperty('gfGroup.visible', false);
    addLuaScript('data/too-slow/changeSplashNoteSonic')
    addLuaScript('data/too-slow/Camera')
    addLuaScript('data/too-slow/creditos')
    addLuaScript('data/too-slow/LuzNegra')
    addLuaScript('data/too-slow/screenBeat')
    addLuaScript('data/too-slow/SonicCountdown')
    addLuaScript('data/too-slow/scriptIntro')
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd'); --put in mods/music/
    end
    end

function onStepHit()--Eventos por Nickobelit (Si los usas dejas créditos)
if curStep == 400 then
removeLuaSprite('Intro',true)
addLuaSprite('TooSlowStage',false)
setProperty('gfGroup.visible', true);
setProperty('timeBar.color', getColorFromHex('ff0015'))
end
if curStep == 688 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 692 then
setProperty('defaultCamZoom', 0.7)
end
if curStep == 728 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 732 then
setProperty('defaultCamZoom', 1.1)
end
if curStep == 736 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 752 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 756 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 784 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 790 then
setProperty('defaultCamZoom', 1.1)
end
if curStep == 792 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 864 then
doTweenZoom('cam', 'camGame',1.1,5, 'quadIn');
end
if curStep == 920 then
setProperty('dad.visible',false)
addLuaSprite('animacionGod', true)
objectPlayAnimation('animacionGod','idle',false)
end
if curStep == 928 then
setProperty('defaultCamZoom', 0.7)
doTweenY('comeBlack1','blackBorderLyrics1',0,2,'quartOut')
doTweenY('comeBlack2','blackBorderLyrics2',screenHeight - 170,2,'quartOut')
end
if curStep == 930 then
makeLuaText('Im', "I'm", 1200, 35, 570)
        setTextFont('Im', 'vcr.ttf')
        setTextColor('Im', 'FF0000')
        setTextBorder('Im',1,'000000')
        setTextSize('Im', 50);
        addLuaText('Im')
        setTextAlignment('Im', 'center')
        setObjectCamera("Im", 'other');
end
if curStep == 934 then
makeLuaText('Gonna', "I'm Gonna", 1200, 35, 570)
        setTextFont('Gonna', 'vcr.ttf')
        setTextColor('Gonna', 'FF0000')
        setTextBorder('Gonna',1,'000000')
        setTextSize('Gonna', 50);
        addLuaText('Gonna')
        setTextAlignment('Gonna', 'center')
        setObjectCamera("Gonna", 'other');
        removeLuaText('Im',true)
end
if curStep == 940 then
makeLuaText('Getcha', "I'm Gonna Get-", 1200, 35, 570)
        setTextFont('Getcha', 'vcr.ttf')
        setTextColor('Getcha', 'FF0000')
        setTextBorder('Getcha',1,'000000')
        setTextSize('Getcha', 50);
        addLuaText('Getcha')
        setTextAlignment('Getcha', 'center')
        setObjectCamera("Getcha", 'other');
        removeLuaText('Gonna',true)
        end
if curStep == 946 then
makeLuaText('Getcha2', "I'm Gonna Getcha!!!", 1200, 35, 570)
        setTextFont('Getcha2', 'vcr.ttf')
        setTextColor('Getcha2', 'FF0000')
        setTextBorder('Getcha2',1,'000000')
        setTextSize('Getcha2', 50);
        addLuaText('Getcha2')
        setTextAlignment('Getcha2', 'center')
        setObjectCamera("Getcha2", 'other');
        removeLuaText('Getcha',true)
        end
if curStep == 958 then
removeLuaText('Getcha2',true)
end
if curStep == 966 then
makeLuaText('I', 'I', 1200, 35, 570)
        setTextFont('I', 'vcr.ttf')
        setTextColor('I', 'FF0000')
        setTextBorder('I',1,'000000')
        setTextSize('I', 50);
        addLuaText('I')
        setTextAlignment('I', 'center')
        setObjectCamera("I", 'other');
        end
if curStep == 976 then
makeLuaText('Im2', 'I AM', 1200, 35, 570)
        setTextFont('Im2', 'vcr.ttf')
        setTextColor('Im2', 'FF0000')
        setTextBorder('Im2',1,'000000')
        setTextSize('Im2', 50);
        addLuaText('Im2')
        setTextAlignment('Im2', 'center')
        setObjectCamera("Im2", 'other');
        removeLuaText('I',true)
        end
if curStep == 986 then
makeLuaText('God', 'I AM GOD!!!', 1200, 35, 570)
        setTextFont('God', 'vcr.ttf')
        setTextColor('God', 'FF0000')
        setTextBorder('God',1,'000000')
        setTextSize('God', 50);
        addLuaText('God')
        setTextAlignment('God', 'center')
        setObjectCamera("God", 'other');
        removeLuaText('Im2',true)
        end
if curStep == 1010 then
removeLuaText('God',true)
end
if curStep == 1015 then
setProperty('dad.visible',true)
removeLuaSprite('animacionGod', true)
end
if curStep == 1016 then
makeLuaText('Ha', 'HA', 1200, 35, 570)
        setTextFont('Ha', 'vcr.ttf')
        setTextColor('Ha', 'FF0000')
        setTextBorder('Ha',1,'000000')
        setTextSize('Ha', 50);
        addLuaText('Ha')
        setTextAlignment('Ha', 'center')
        setObjectCamera("Ha", 'other');
        end

if curStep == 1023 then
makeLuaText('Ha2', 'HA-HA', 1200, 35, 570)
        setTextFont('Ha2', 'vcr.ttf')
        setTextColor('Ha2', 'FF0000')
        setTextBorder('Ha2',1,'000000')
        setTextSize('Ha2', 50);
        addLuaText('Ha2')
        setTextAlignment('Ha2', 'center')
        setObjectCamera("Ha2", 'other');
        removeLuaText('Ha',true)
        end
if curStep == 1030 then
makeLuaText('Ha3', 'HA-HA-HA', 1200, 35, 570)
        setTextFont('Ha3', 'vcr.ttf')
        setTextColor('Ha3', 'FF0000')
        setTextBorder('Ha3',1,'000000')
        setTextSize('Ha3', 50);
        addLuaText('Ha3')
        setTextAlignment('Ha3', 'center')
        setObjectCamera("Ha3", 'other');
        removeLuaText('Ha2',true)
        end
if curStep == 1037 then
makeLuaText('Ha4', 'HA-HA-HA-HA', 1200, 35, 570)
        setTextFont('Ha4', 'vcr.ttf')
        setTextColor('Ha4', 'FF0000')
        setTextBorder('Ha4',1,'000000')
        setTextSize('Ha4', 50);
        addLuaText('Ha4')
        setTextAlignment('Ha4', 'center')
        setObjectCamera("Ha4", 'other');
        removeLuaText('Ha3',true)
        end

if curStep == 1046 then
makeLuaText('Ha5', 'HA-HA-HA-HA-HAAAAA', 1200, 35, 570)
        setTextFont('Ha5', 'vcr.ttf')
        setTextColor('Ha5', 'FF0000')
        setTextBorder('Ha5',1,'000000')
        setTextSize('Ha5', 50);
        addLuaText('Ha5')
        setTextAlignment('Ha5', 'center')
        setObjectCamera("Ha5", 'other');
        removeLuaText('Ha4',true)
        end
if curStep == 1048 then
setProperty('defaultCamZoom', 0.65)
doTweenY('backBlack1','blackBorderLyrics1',-170,2,'quartOut')
doTweenY('backBlack2','blackBorderLyrics2',screenHeight,2,'quartOut')
doTweenY('HaXD','Ha5',screenHeight,2,'quartOut')
end
if curStep == 1056 then
removeLuaSprite('blackBorderLyrics1',true)
removeLuaSprite('blackBorderLyrics2',true)
removeLuaText('Ha5',true)
end
if curStep == 1232 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 1248 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 1296 then
doTweenZoom('cam', 'camGame', 1.1,1.5, 'quadIn');
end
if curStep == 1312 then
doTweenZoom('cam', 'camGame', 0.65, 1.5, 'linear');
end
if curStep == 1344 then
setProperty('defaultCamZoom', 0.7)
end
if curStep == 1352 then
setProperty('defaultCamZoom',0.8)
end
if curStep == 1352 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 1368 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 1408 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 1412 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 1413 then
setProperty('defaultCamZoom', 1)
end
if curStep == 1415 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 1415 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 1421 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 1423 then
setProperty('defaultCamZoom', 1)
end
if curStep == 1424 then
doTweenZoom('cam', 'camGame', 0.65, 1, 'quadInOut');
end
if curStep == 1430 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 1440 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 1456 then
setProperty('defaultCamZoom', 1)
end
if curStep == 1472 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 1478 then
setProperty('defaultCamZoom', 0.9)
end
if curStep == 1484 then
setProperty('defaultCamZoom', 1)
end
if curStep == 1490 then
setProperty('defaultCamZoom', 1.1)
end
if curStep == 1496 then
setProperty('defaultCamZoom', 1)
end
if curStep == 1500 then
setProperty('defaultCamZoom', 0.8)
end
if curStep == 1504 then
doTweenZoom('cam', 'camGame',0.65, 1.3, 'linear');
end
if curStep == 1511 then
setProperty('defaultCamZoom', 0.65)
end
if curStep == 1824 then
doTweenZoom('cam', 'camGame', 1.2,5, 'quadIn');
end
if curStep == 1888 then
setProperty('defaultCamZoom', 0.65)
doTweenAlpha('Character Visibility', 'gf', 0, 3, 'quadIn');
doTweenAlpha('Character Visibility2', 'boyfriend', 0, 3, 'quadIn');
doTweenAlpha('Character Visibility3', 'TooSlowStage', 0, 3, 'quadIn');
end
end