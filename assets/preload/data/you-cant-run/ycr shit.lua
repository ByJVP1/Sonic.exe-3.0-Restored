function onCreate()
    makeLuaSprite('vg', 'RedVG');

    setObjectCamera('vg', 'hud');

end

function onUpdate()
    if getProperty('vg.alpha') == 1 then
        doTweenAlpha('dothetweenvg', 'vg', 0, 1, 'quadInOut');
    end
end

function onTweenCompleted(tag)
    if tag == 'dothetweenvg' then
        doTweenAlpha('dothetweenvgagain', 'vg', 1, 1, 'quadInOut');
    end
end


function onStepHit()
    if curStep == 1 then 
        
        setProperty('vg.visible', false);

        addLuaSprite('vg', true);
		
		
    end 
    if curStep == 80 then 
        setProperty('vg.visible', true);
    end 
    if curStep == 528 then
        setProperty('vg.visible', false);
    end
    if curStep == 784 then
        setProperty('vg.visible', true);
    end
end 




