function onCreate()
    Dodged = false;
    canDodge = false;
    DodgeTime = 0;
    
makeAnimatedLuaSprite('s', 'space', 0, 588);
        addAnimationByPrefix('s', 's', 's', 24, false);
	addAnimationByPrefix('s', 'sPress', 'sPressed', 24, false);
	addLuaSprite('s', true);
	setObjectCamera('s', 'other')
	end
function onEvent(name,value1)
        if name == "HogDodge" then
            DodgeTime = (value1);
            canDodge = true;
            runTimer('Died', DodgeTime);
            end
end

function onUpdate()
  if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 132) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left'))  then
      objectPlayAnimation('s','sPress',false);
      Dodged = true
      canDodge = false
        end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   end
end