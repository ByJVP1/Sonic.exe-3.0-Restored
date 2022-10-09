function onCreate()--sonicesputo
precacheImage('hog/TargetLock')

makeLuaSprite('readthefiletitlelol','black', 0, 0);
	setObjectCamera('readthefiletitlelol', 'camother');
	addLuaSprite('readthefiletitlelol', true);
	setProperty('readthefiletitlelol.visible', true);

  setProperty('gfGroup.visible', false);

if lowQuality then
makeLuaSprite('Piedraxd', 'hog/stageGamaPiedra', -510, -700);
addLuaSprite('Piedraxd', false);
scaleObject('Piedraxd', 1.3, 1.3);
end
  
	if not lowQuality then
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
end

--jijijijaaaaa 
--Nickobelit

--if you steal this fuck you ( not if you give credits :) )
function onBeatHit()
	if beatHitFuncs[curBeat] then 
		beatHitFuncs[curBeat]()
	end
end


function onStepHit()
if curStep == 1203 then
makeAnimatedLuaSprite('target', 'hog/TargetLock', 700, 250); 
addAnimationByPrefix('target', 'target', 'TargetLock', 24, true); 
objectPlayAnimation('target','target',true)
  scaleObject('target ', 1, 1);
  addLuaSprite('target', true);
end
if curStep == 1216 then
removeLuaSprite('target', true);
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