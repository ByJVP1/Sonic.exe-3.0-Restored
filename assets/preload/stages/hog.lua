function onCreate()--sonicesputo
precacheImage('hog/TargetLock')

makeLuaSprite('readthefiletitlelol', 'black', 0, 0);
	scaleObject('readthefiletitlelol', 2,2);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);
	setProperty('readthefiletitlelol.visible', true);
	
	makeAnimatedLuaSprite('PaperBG', 'mashedTails/PaperBG', -550, -310);
    addAnimationByPrefix('PaperBG', 'stage', 'PaperBG0', 24, true);
    addLuaSprite('PaperBG', false);
    scaleObject('PaperBG', 1.7,1.7);
    setProperty('PaperBG.alpha', 0)

  setProperty('gfGroup.visible', false);
  setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd'); --put in mods/music/

if lowQuality then
makeLuaSprite('Piedraxd', 'hog/stageGamaPiedra', -510, -700);
addLuaSprite('Piedraxd', false);
scaleObject('Piedraxd', 1.3, 1.3);

makeLuaSprite('PiedraDEADxd', 'hog/stageDEADGamaPiedra', -510, -700);
addLuaSprite('PiedraDEADxd', false);
scaleObject('PiedraDEADxd', 1.3, 1.3);
setProperty('PiedraDEADxd.visible', false);
end
  
	if not lowQuality then
makeLuaSprite('bgDead', 'hog/bgDEAD', -490, -350);
 setLuaSpriteScrollFactor('bgDead', 1,1);
  scaleObject('bgDead', 1.3,1.3);
  addLuaSprite('bgDead', false);
  setProperty('bgDead.visible', false);
  
  makeAnimatedLuaSprite('WaterfallsDEAD', 'hog/DEADWaterfalls', -1100, 20); 
addAnimationByPrefix('WaterfallsDEAD', 'Waterfalls', 'British', 10, true); 
objectPlayAnimation('WaterfallsDEAD','Waterfalls',true)
 setLuaSpriteScrollFactor('WaterfallsDEAD', 1, 1);
  scaleObject('WaterfallsDEAD', 1, 1);
  addLuaSprite('WaterfallsDEAD', false);
  setProperty('WaterfallsDEAD.visible', false);
  
  makeAnimatedLuaSprite('HillsandHillsDEAD', 'hog/DEADHills', -200, 50); 
addAnimationByPrefix('HillsandHillsDEAD', 'HillsandHills', 'DumbassMF', 10, true); 
objectPlayAnimation('HillsandHillsDEAD','HillsandHills',true)
 setLuaSpriteScrollFactor('HillsandHillsDEAD', 1, 1);
  scaleObject('HillsandHillsDEAD ', 1, 1);
  addLuaSprite('HillsandHillsDEAD', false);
  setProperty('HillsandHillsDEAD.visible', false);
  
makeLuaSprite('floorDEAD', 'hog/floorDEAD', -690, -875);
addLuaSprite('floorDEAD', false);
scaleObject('floorDEAD', 1.5,1.5);
setProperty('floorDEAD.visible', false);

 makeLuaSprite('bg', 'hog/bg', -490, -350);
 setLuaSpriteScrollFactor('bg', 1,1);
  scaleObject('bg', 1.3,1.3);
  addLuaSprite('bg', false);
  --lo sabia
 makeAnimatedLuaSprite('Waterfalls', 'hog/Waterfalls', -1100, 20); 
addAnimationByPrefix('Waterfalls', 'Waterfalls', 'British', 10, true); 
objectPlayAnimation('Waterfalls','Waterfalls',true)
 setLuaSpriteScrollFactor('Waterfalls', 1, 1);
  scaleObject('Waterfalls', 1, 1);
  addLuaSprite('Waterfalls', false);
  --tu eres espantaviejas
  makeAnimatedLuaSprite('HillsandHills', 'hog/HillsandHills', -200, 50); 
addAnimationByPrefix('HillsandHills', 'HillsandHills', 'DumbassMF', 10, true); 
objectPlayAnimation('HillsandHills','HillsandHills',true)
 setLuaSpriteScrollFactor('HillsandHills', 1, 1);
  scaleObject('HillsandHills ', 1, 1);
  addLuaSprite('HillsandHills', false);
  
makeLuaSprite('floor', 'hog/floor', -510, -700);
addLuaSprite('floor', false);
scaleObject('floor', 1.3, 1.3);
end
	makeLuaSprite('transformationmoment', 'black', -500, -500);
	scaleObject('transformationmoment', 2,2);
	addLuaSprite('transformationmoment', true);
	setProperty('transformationmoment.visible', false);
end

--jijijijaaaaa 
--Nickobelit

--if you steal this fuck you ( not if you give credits :) )
function onBeatHit()
	if beatHitFuncs[curBeat] then 
		beatHitFuncs[curBeat]()
	end
end


function onStepHit()--Todo hecho por NICKOBELIT!!!!!!!,YO!!!!!(No encerio por esto tardó mas el Port, porque se sentía vacío jugarlo sin eventos)
if curStep == 208 then
makeAnimatedLuaSprite('target', 'hog/TargetLock', 700, 250); 
addAnimationByPrefix('target', 'target', 'TargetLock', 24, true); 
objectPlayAnimation('target','target',true)
  scaleObject('target ', 1, 1);
  addLuaSprite('target', true);
  end
if curStep == 224 then
removeLuaSprite('target', false);
end
if curStep == 298 then
makeAnimatedLuaSprite('target', 'hog/TargetLock', 700, 250); 
addAnimationByPrefix('target', 'target', 'TargetLock', 24, true); 
objectPlayAnimation('target','target',true)
  scaleObject('target ', 1, 1);
  addLuaSprite('target', true);
  end
if curStep == 312 then
removeLuaSprite('target', true);
end
if curStep == 512 then
	setProperty('transformationmoment.visible', true);
	removeLuaSprite('floor', true);
	removeLuaSprite('HillsandHills', true);
	removeLuaSprite('Waterfalls', true);
	removeLuaSprite('bg', true);
	removeLuaSprite('Piedraxd', true);
	end
if curStep == 640 then
addLuaScript('custom_events/changeSplashNoteSonic')
end
	if curStep == 864 then
    setProperty('cameraSpeed', 2.2);
	setProperty('transformationmoment.visible', false);
	setProperty('bgDead.visible', true);
	setProperty('WaterfallsDEAD.visible', true);
	setProperty('HillsandHillsDEAD.visible', true);
	setProperty('floorDEAD.visible', true);
	setProperty('PiedraDEADxd.visible', true);
	setProperty('timeBar.color', getColorFromHex('ff0015'))
	addLuaScript('custom_events/NickobelitAdiosVidaxd')
	end
if curStep == 912 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 916 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 918 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 922 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 976 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 980 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 982 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 986 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1040 then
setProperty('defaultCamZoom',0.75)
end
if curStep == 1044 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 1048 then
setProperty('defaultCamZoom',0.95)
end
if curStep == 1052 then
setProperty('defaultCamZoom',1.05)
end
if curStep == 1104 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 1112 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1168 then
setProperty('defaultCamZoom',0.75)
end
if curStep == 1172 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 1176 then
setProperty('defaultCamZoom',0.95)
end
if curStep == 1180 then
setProperty('defaultCamZoom',1.05)
end
if curStep == 1232 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 1240 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1376 then
setProperty('defaultCamZoom',1)
end
if curStep == 1380 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1384 then
setProperty('defaultCamZoom',1)
end
if curStep == 1388 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1390 then
setProperty('defaultCamZoom',1)
end
if curStep == 1394 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1440 then
setProperty('defaultCamZoom',1)
end
if curStep == 1472 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1632 then
setProperty('defaultCamZoom',1)
end
if curStep == 1636 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1640 then
setProperty('defaultCamZoom',1)
end
if curStep == 1644 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1646 then
setProperty('defaultCamZoom',1)
end
if curStep == 1650 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 1696 then
setProperty('defaultCamZoom',1)
end
if curStep == 1728 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 2016 then
setProperty('defaultCamZoom',0.75)
end
if curStep == 2032 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 2048 then
setProperty('defaultCamZoom',1)
end
if curStep == 2062 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 2066 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 2176 then
setProperty('defaultCamZoom',1)
end
if curStep == 2190 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 2194 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 2560 then
setProperty('defaultCamZoom',0.75)
end
if curStep == 2568 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 2576 then
setProperty('defaultCamZoom',0.95)
end
if curStep == 2584 then
setProperty('defaultCamZoom',1.05)
end
if curStep == 2592 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 2816 then
setProperty('defaultCamZoom',0.75)
end
if curStep == 2824 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 2832 then
setProperty('defaultCamZoom',0.95)
end
if curStep == 2840 then
setProperty('defaultCamZoom',1.05)
end
if curStep == 2848 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4128 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 4136 then
setProperty('defaultCamZoom',1.05)
end
if curStep == 4148 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4160 then
triggerEvent('Kaboom','1','1');
addLuaScript('custom_events/OponnentHitNoteCameraShake');
end
if curStep == 4288 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 4292 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4296 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 4300 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4302 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 4306 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4352 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 4360 then
setProperty('defaultCamZoom',0.95)
end
if curStep == 4368 then
setProperty('defaultCamZoom',1.05)
end
if curStep == 4384 then
setProperty('defaultCamZoom',0.95)
end
if curStep == 4392 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 4400 then
setProperty('defaultCamZoom',0.65)--La Original
end

if curStep == 4544 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 4548 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4552 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 4556 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4558 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 4562 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4608 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 4616 then
setProperty('defaultCamZoom',0.95)
end
if curStep == 4624 then
setProperty('defaultCamZoom',1.05)
end
if curStep == 4640 then
setProperty('defaultCamZoom',0.95)
end
if curStep == 4648 then
setProperty('defaultCamZoom',0.85)
end
if curStep == 4656 then
setProperty('defaultCamZoom',0.65)--La Original
end
if curStep == 4682 then
triggerEvent('Kaboom','0','0');
setProperty('PaperBG.alpha', 1)
removeLuaSprite('bgDead',true)
end
if curStep == 4707 then
removeLuaSprite('WaterfallsDEAD',true)
end
if curStep == 4730 then
removeLuaSprite('HillsandHillsDEAD',true)
end
if curStep == 4778 then
doTweenAlpha('adiosPiso', 'floorDEAD',0, 0.5, 'linear')
doTweenAlpha('adiosPisoPIEDRAXD', 'PiedraDEADxd',0, 0.5, 'linear')
doTweenColor('negroBf','boyfriend','000000',0.5)
doTweenColor('negroDad','dad','000000',0.5);
end
if curStep == 4960 then
doTweenAlpha('adiosHud','camHUD',0, 3, 'linear')
doTweenAlpha('adiosBf', 'boyfriend',0, 3, 'linear')
doTweenAlpha('adiosDad', 'dad',0, 3, 'linear')
end
end
function onStartCountdown()
    runTimer('hogmoment', 1, 0.5)
end
	
function onTimerCompleted(tag)
	if tag == 'hogmoment' then
        doTweenAlpha('graphicAlpha', 'readthefiletitlelol', 0, 1, 'linear')
        if tag == 'GameOver' then
     setProperty('health', -1);
    end 
       end
   end

