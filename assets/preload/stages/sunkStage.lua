--Stage Por Nickobelit
canBeat = false;
function onCreatePost()
   setPropertyFromGroup('opponentStrums', 0, 'x', 172)
   setPropertyFromGroup('opponentStrums', 1, 'x', 284)
   setPropertyFromGroup('opponentStrums', 2, 'x', 396)
   setPropertyFromGroup('opponentStrums', 3, 'x', 508)
   setPropertyFromGroup('playerStrums', 0, 'x', 662)
   setPropertyFromGroup('playerStrums', 1, 'x', 774)
   setPropertyFromGroup('playerStrums', 2, 'x', 886)
   setPropertyFromGroup('playerStrums', 3, 'x', 998)
end

function onCreate()
    
makeLuaSprite('stage', 'sunky/stage', 0, -570)
    scaleObject('stage',1.1,1.1);
    addLuaSprite('stage', false)

	makeAnimatedLuaSprite('sunker', 'sunky/sunker', 500, -50); 
	addAnimationByPrefix('sunker', 'sunker', 'sunker', 24, true); 
	setLuaSpriteScrollFactor('sunker', 1, 1);
	objectPlayAnimation('sunker','sunker',true)
	scaleObject('sunker',6, 6);
	setProperty('sunker.visible', false);
	addLuaSprite('sunker', true);

	
	makeLuaSprite('cereal', 'sunky/cereal', -800, 0);
    setLuaSpriteScrollFactor('cereal', 0, 0);
	scaleObject('cereal',1.2, 1.2);
	setProperty('cereal.visible', false);
	addLuaSprite('cereal', true);
	setObjectCamera('cereal', 'other')
	
	makeLuaSprite('munch', 'sunky/sunkyMunch', -800, -850);
    setLuaSpriteScrollFactor('munch', 0, 0);
	scaleObject('munch',1.3, 1.3);
	setProperty('munch.visible', false);
	addLuaSprite('munch', true);
	setObjectCamera('munch', 'other')
	
	makeLuaSprite('pose', 'sunky/sunkyPose', 300, -1250);
    setLuaSpriteScrollFactor('pose', 0, 0);
	scaleObject('pose',1.3, 1.3);
	setProperty('pose.visible', false);
	addLuaSprite('pose', true);
	setObjectCamera('pose', 'other')
	
	makeLuaSprite('4-3', 'sunky/4_3 shit', 0, 0)
    scaleObject('4-3',1,1);
    addLuaSprite('4-3', true);
    setObjectCamera('4-3', 'other')
    
    makeLuaSprite('readthefiletitlelol2', 'black', 0,-50 );
	scaleObject('readthefiletitlelol2', 2,2);
	addLuaSprite('readthefiletitlelol2', true);
	setProperty('readthefiletitlelol2.visible', false);
	
	makeLuaSprite('sunkage', 'sunky/sunkage', -80, -40)
    setLuaSpriteScrollFactor('sunkage', 0, 0);
	scaleObject('sunkage', 1.1, 1.2);
	addLuaSprite('sunkage', true);
	setProperty('sunkage.visible', false);
	setObjectCamera('sunkage', 'other')
	
	makeAnimatedLuaSprite('bfUwu', 'sunky/uwu', 500, 0); 
	addAnimationByPrefix('bfUwu', 'uwu', 'uwu', 24, false); 
	scaleObject('bfUwu',2,2)
	setProperty('bfUwu.alpha',0);
	addLuaSprite('bfUwu', true);
	
	--Pequeño Efecto que quise hacer pero lo descarté...
	--(El quiera usarlo solo quite lo "--" de adelante del código)
	--makeLuaSprite('blanco', 'blanco', 150, -200)
    --scaleObject('blanco',1,1);
    --addLuaSprite('blanco', false)
   -- setProperty('blanco.alpha', 0.15);
    
   --setObjectOrder('blanco', false)
   --setObjectOrder('gfGroup', false)
   --setObjectOrder('stage', false)
   --setObjectOrder('bg', false)
   

	beatHitFuncs = { 
	[33] = function()
	setProperty('sunker.visible', true);
	end,
	[34] = function()
	doTweenAlpha('sunkerbye', 'sunker', 0, 0.8, 'linear');
	end,
	[40] = function()
	removeLuaSprite('sunker', true);
	end,
	[137] = function()
	setProperty('cereal.visible', true);
	doTweenX('therehegoes', 'cereal', 2000, 10, 'linear');
    end, 
    [160] = function()
    removeLuaSprite('cereal', true);
    end,
    [201] = function()
	setProperty('pose.visible', true);
	doTweenY('therehegoes3Y', 'pose', 3000, 20, 'linear');
    end, 
    [230] = function()
    removeLuaSprite('pose', true);
    end, 
    [232] = function()
	setProperty('munch.visible', true);
	doTweenX('therehegoes2', 'munch', 4000, 20, 'linear');
	doTweenY('therehegoes2Y', 'munch', 2500, 20, 'linear');
    end, 
    [260] = function()
    removeLuaSprite('munch', true);
    end,
	}
end

function onTimerCompleted(tag)
     if tag == 'sunkage' then
        doTweenAlpha('graphicAlpha', 'readthefiletitlelol2', 0, 1, 'linear')
       end 
   end

function onBeatHit()
if curBeat % 2 == 0 and canBeat == true then
      triggerEvent('Add Camera Zoom', 0.017, 0.07)
end

if beatHitFuncs[curBeat] then 
		beatHitFuncs[curBeat]()
	end

     if curBeat %1 == 0 then

        setProperty('timeBar.color', getColorFromHex('ff0015'))
     end

     if curBeat %4 == 0 then

        setProperty('timeBar.color', getColorFromHex('15ff00'))
        end

        if curBeat %7 == 0 then

        setProperty('timeBar.color', getColorFromHex('ea00ff'))
        end

        if curBeat %10 == 0 then

        setProperty('timeBar.color', getColorFromHex('00ffea'))
        end

        if curBeat %13 == 0 then

        setProperty('timeBar.color', getColorFromHex('0015ff'))
        end

        if curBeat %16 == 0 then

        setProperty('timeBar.color', getColorFromHex('974dff'))
        end

        if curBeat %19 == 0 then

        setProperty('timeBar.color', getColorFromHex('ffffff'))
        end

        if curBeat %22 == 0 then

        setProperty('timeBar.color', getColorFromHex('ffea00'))

     end

end
  
function onUpdate()
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
   setPropertyFromGroup('opponentStrums', 0, 'x', 9999)
   setPropertyFromGroup('opponentStrums', 1, 'x', 9999)
   setPropertyFromGroup('opponentStrums', 2, 'x', 9999)
   setPropertyFromGroup('opponentStrums', 3, 'x', 9999)
   noteTweenX('play0', 4, 415, 0.00001, 'static')
   noteTweenX('play1', 5, 525, 0.00001, 'static')
   noteTweenX('play2', 6, 635, 0.00001, 'static')
   noteTweenX('play3', 7, 745, 0.00001, 'static')
 end
if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
    setProperty('botplayTxt.y', 495)
 else --elseeeeeeeeeeeeeeif you then 
    --setProperty('you.lifeSpan', 4)
    setProperty('botplayTxt.y', 155)
end
     for i = 0, getProperty('grpNoteSplashes.length')-1 do
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', '75')
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', '95')--why the heck it's not moving
        setPropertyFromGroup('grpNoteSplashes', i, 'scale.x', '0.55')
        setPropertyFromGroup('grpNoteSplashes', i, 'scale.y', '0.55')
        setPropertyFromGroup('grpNoteSplashes', i, 'alpha', 1)
end
end

--Full movimiento de cámara de Fazz
function onStepHit()
   if curStep == 96 then
       doTweenZoom('cam', 'camGame', 1.3, 3.95, 'quadIn');
   end
   if curStep == 128 then
       doTweenZoom('cam', 'camGame', 1.15, 1.55, 'quadIn');
   end
    if curStep == 144 then
       canBeat = true;
   end
   if curStep == 352 then
       doTweenZoom('cam', 'camGame', 1.55, 1.15, 'quadInOut');
   end
   if curStep == 638 then
       doTweenZoom('cam', 'camGame', 2, 1.19, 'quadIn');
       setProperty('defaultCamZoom', 2)
       canBeat = false;
    end
   if curStep == 652 then
       doTweenZoom('cam', 'camGame', 0.96, 1.08, 'bounceOut');
       setProperty('defaultCamZoom', 0.96)
   end
    if curStep == 656 then
        canBeat = true;
   end
   if curStep == 1424 then
       doTweenAlpha('iocassionalysunk', 'sunkage', 0, 0.1, 'linear');
	setProperty('readthefiletitlelol2.visible', true);
	runTimer('sunkage', 2, 0.5)
   end
if curStep == 1440 then
setProperty('sunkage.visible', true);
    doTweenAlpha('iocassionalysunk2', 'sunkage', 1, 1, 'linear');
    end
if curStep == 1458 then
doTweenAlpha('iocassionalysunkbye', 'sunkage', 0, 0.1, 'linear');
end
if curStep == 1461 then
removeLuaSprite('sunkage', false);
removeLuaSprite('readthefiletitlelol2', false);
    end
if curStep == 1590 then
doTweenAlpha('bfUwuAlpha','bfUwu', 0.8, 5, 'linear');
objectPlayAnimation('bfUwu','uwu',false)
doTweenX('bfX','boyfriend',1900,1, 'linear');
doTweenZoom('cam', 'camGame', 1.1, 4.8, 'quadIn');
end
if curStep == 1664 then
setProperty('defaultCamZoom', 0.77)
doTweenX('bfX','boyfriend',1550,1, 'linear');
doTweenAlpha('bfUwuAlpha','bfUwu', 0, 1, 'linear');
end
end