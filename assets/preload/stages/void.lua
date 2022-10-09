function onCreate()
	-- background shit
	makeLuaSprite('theSky', 'black', -50, 50);
	addLuaSprite('theSky',true)

        makeLuaSprite('theSky2', 'bg', -150, 50);
	addLuaSprite('theSky2',false)
        setProperty('theSky2.visible',false);
        scaleObject('theSky2', 2, 2);
        setProperty('gfGroup.visible', false);
end
function onStepHit()
if curStep == 32 then
removeLuaSprite('theSky',true)
setProperty('theSky2.visible',true);
end
end