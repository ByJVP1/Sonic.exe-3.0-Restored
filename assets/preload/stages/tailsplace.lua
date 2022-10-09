function onCreate()
	makeLuaSprite('stage','mashedTails/secretBG', -250, -300);
	scaleObject('stage', 0.8,0.8);
	addLuaSprite('stage', false);
	
	makeAnimatedLuaSprite('PaperBG', 'mashedTails/PaperBG', -500, -280);
    addAnimationByPrefix('PaperBG', 'stage', 'PaperBG0', 24, true);
    addLuaSprite('PaperBG', false);
    scaleObject('PaperBG', 1.7,1.7);
    setProperty('PaperBG.alpha', 0)
    
	makeLuaSprite('memories1','mashedTails/TailsMemories1', -2500, 150);
	scaleObject('memories1', 0.6,0.6);
	addLuaSprite('memories1', false);
	setProperty('memories1.alpha', 0)
	
	makeLuaSprite('memories2','mashedTails/TailsMemories2', 3000, 150);
	scaleObject('memories2', 0.6,0.6);
	addLuaSprite('memories2', false);
	setProperty('memories2.alpha', 0)
	
makeLuaSprite('memories3','mashedTails/TailsMemories3', -2500, 150);
	scaleObject('memories3', 0.6,0.6);
	addLuaSprite('memories3', false);
	setProperty('memories3.alpha', 0)
	
makeLuaSprite('memories4','mashedTails/TailsMemories4', 400, 150);
	scaleObject('memories4', 0.6,0.6);
	addLuaSprite('memories4', false);
	setProperty('memories4.alpha', 0)
	
    
	setProperty('gfGroup.visible', false);
  setProperty('cameraSpeed', 2.2);
end
function onStepHit()--Nickobelit lo hizo,el bfezz me dio al idea (un capo)
if curStep == 827 then
setProperty('defaultCamZoom', 1.1);
end
if curStep == 829 then
doTweenAlpha('Character Visibility', 'stage', 0,0.5, 'linear');
doTweenAlpha('Character Visibility', 'PaperBG', 1,0.5, 'linear');
end
if curStep == 833 then
setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false) 
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
setProperty('defaultCamZoom', 0.8);
doTweenColor('negroBf','boyfriend','000000',0.2)
doTweenColor('negroDad','dad','000000',0.2);
doTweenX('memoriesMove','memories1',2000, 15, 'linear')
doTweenAlpha('memoriesAlpha', 'memories1', 1,12, 'quadIn');
runTimer('siguiente',12)
end
if curStep == 1176 then
doTweenAlpha('memoriesAlpha6', 'memories4', 1,5, 'quadIn');
end
if curStep == 1205 then
setProperty('defaultCamZoom', 1.2);
end
if curStep == 1217 then
        setProperty('scoreTxt.visible', true)
        setProperty('healthBar.visible', true)
        setProperty('healthBarBG.visible', true)
        setProperty('iconP1.visible', true)
        setProperty('iconP2.visible', true)
setProperty('defaultCamZoom', 1);
doTweenAlpha('Character Visibility', 'stage', 1,0.5, 'linear');
doTweenAlpha('Character Visibility', 'PaperBG', 0,0.5, 'linear');
removeLuaSprite('memories1',true)
removeLuaSprite('memories2',true)
removeLuaSprite('memories3',true)
removeLuaSprite('memories4',true)
doTweenColor('negroBf','boyfriend','FFFFFF',0.2)
doTweenColor('negroDad','dad','FFFFFF',0.2);
end
end
function onTimerCompleted(tag)
	if tag == 'siguiente' then
       doTweenAlpha('memoriesAlpha2', 'memories1', 0,2, 'quadIn');
        doTweenX('memoriesMove2','memories2',-2000, 15, 'linear')
        doTweenAlpha('memoriesAlpha3', 'memories2', 1,12, 'quadIn');
        runTimer('siguiente2',12)
    end
if tag == 'siguiente2' then
        doTweenAlpha('memoriesAlpha4', 'memories2', 0,2, 'quadIn');
        doTweenX('memoriesMove3','memories3',2000, 15, 'linear')
        doTweenAlpha('memoriesAlpha5', 'memories3', 1,12, 'quadIn');
    end
end