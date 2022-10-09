function onCreate()
--Xterion Poligonito...
--Nickobelit
	makeLuaSprite('Sky', 'xterion/sky', -1200, -1500);
	addLuaSprite('Sky',false)
	scaleObject('Sky',3,3)
	setScrollFactor('Sky',0.8,0.8)
	
	makeLuaSprite('floor', 'xterion/floor', -550,680);-- (-550,680)
	addLuaSprite('floor',false)
	scaleObject('floor',1.5,1.5)
	makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', true)
    
   makeLuaSprite('circle', 'StartScreens/Circle-substantial', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-substantial', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
	setProperty('gfGroup.visible', false);
end

function onStepHit()
if curStep == 294 then
setProperty('defaultCamZoom',1.5)
end
if curStep == 304 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 1200 then
setProperty('defaultCamZoom',1.1)
end
if curStep == 1206 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 1212 then
setProperty('defaultCamZoom',1.1)
end
if curStep == 1218 then
setProperty('defaultCamZoom',0.9)
end
if curStep == 1840 then
setProperty('defaultCamZoom', 1.1)
end
if curStep == 1960 then
doTweenAlpha('sevasevasefueeee', 'floor', 0,1.2, 'linear');
end
if curStep == 1968 then
doTweenAngle('girennn', 'dad', -3000,40, 'linear')--Momento Épico Escapando DEL VACÍO :) XD
doTweenAngle('giraBf', 'boyfriend', 3000, 40, 'linear')
doTweenY('subimosss', 'Sky',0,67, 'linear');
runTimer('volverNormal',40, 1)
setProperty('defaultCamZoom',0.7)
end
if curStep == 2224 then
setProperty('defaultCamZoom',1.15)
end
if curStep == 2256 then
setProperty('defaultCamZoom',0.7)
end
if curStep == 2480 then
setProperty('defaultCamZoom',1.15)
end
if curStep == 2734 then
setProperty('defaultCamZoom',0.7)
doTweenAlpha('Character Visibility', 'dad', 0, 5, 'quadIn');
doTweenAlpha('Character Visibility2', 'boyfriend', 0, 5, 'quadIn');
doTweenAlpha('HudFade', 'camHUD', 0,5, 'linear');
end
end

function onTimerCompleted(tag)
	if tag == 'volverNormal' then
        doTweenAngle('volver', 'dad', -6480,33, 'linear')
	doTweenAngle('volverBf', 'boyfriend', 6480, 33, 'linear')
       end
   end