local xx = 460;
local yy = 460;
local xx2 = 950;
local yy2 = 520;
local ofs = 25;
local ofs2 = 25;
local followchars = true;
local del = 0;
local del2 = 0

function onCreate()
	-- with addLuaSprite, the farther up it is on the script is how far back it is in layers

	setProperty('cameraSpeed', 1.8)
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');
	setPropertyFromClass('PlayState', 'introSoundsSuffix', '-bruh');

	makeLuaSprite('seemslikefarmland', 'Cycles/floor', -400, -250);
	addLuaSprite('seemslikefarmland', false)
	scaleObject('seemslikefarmland', 0.6, 0.6);
	
	 if not lowQuality then
	makeLuaSprite('black_vignette', 'black_vignette', 0, 0);
	
	
	makeAnimatedLuaSprite('defnotknux', 'Cycles/NotKnuckles_Assets', 300, -50);
	addAnimationByPrefix('defnotknux', 'hans', 'Notknuckles', 24, true);
	makeAnimatedLuaSprite('BruhFlower', 'Cycles/WeirdAssFlower_Assets', -200, 50);
	addAnimationByPrefix('BruhFlower', 'staring', 'flower', 24, true);

	scaleObject('readthefiletitlelol', 6.0, 6.0);
	scaleObject('defnotknux', 1, 1);
	scaleObject('BruhFlower', 0.8, 0.8);

	setObjectCamera('black_vignette', 'other');

	
	addLuaSprite('BruhFlower', false)
	addLuaSprite('defnotknux', false)
	addLuaSprite('black_vignette', true)
	end
      makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', true)
    
   makeLuaSprite('circle', 'StartScreens/Circle-cycles', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-cycles', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
setProperty('gfGroup.visible', false);
end
function onSongStart()
setProperty('timeBar.color', getColorFromHex('ff0015'))
end
function onUpdate()
	if followchars == true then
		
        if mustHitSection == false then
           
			setProperty('defaultCamZoom', 0.75)
			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
           
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
			
			
        else
           
			setProperty('defaultCamZoom', 0.75)
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end

            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
		
        end
	end
end

function onGameOver()
	setProperty('camHUD.alpha', 0);
	
	user32.MessageBoxA(nil, "  got you.", " ", ffi.C.MB_OK + ffi.C.MB_ICONINFORMATION)
	
	if ffi.C.MB_OK then
	   os.exit()
	end
	
	return Function_Stop;
end