function onCreate()
    makeAnimatedLuaSprite('fatalityBg1','fatal/launchbase',-1200,-900)
    addAnimationByPrefix('fatalityBg1','moviment','idle',14,true)
    setProperty('fatalityBg1.antialiasing',false)
    scaleObject('fatalityBg1',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2','fatal/domain',-1200,-900)
    addAnimationByPrefix('fatalityBg2','moviment','idle',14,false)
    setProperty('fatalityBg2.antialiasing',false)
    scaleObject('fatalityBg2',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2-5','fatal/domain2',-1200,-900)
    addAnimationByPrefix('fatalityBg2-5','moviment','idle',14,false)
    setProperty('fatalityBg2-5.antialiasing',false)
    scaleObject('fatalityBg2-5',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg3','fatal/truefatalstage',-1200,-900)
    addAnimationByPrefix('fatalityBg3','moviment','idle',14,false)
    setProperty('fatalityBg3.antialiasing',true)
    scaleObject('fatalityBg3',5.7,5.7)

    addLuaSprite('fatalityBg1')
    
    makeLuaSprite('2','StartScreens/fatal_2',390,180)
    scaleObject('2',4,4)  
    setObjectCamera('2', 'other')
    
    makeLuaSprite('1','StartScreens/fatal_1',390,180)
    scaleObject('1',4,4)  
    setObjectCamera('1', 'other')

    makeLuaSprite('Go','StartScreens/fatal_go',390,180)
    scaleObject('Go',4,4)  
    setObjectCamera('Go', 'other')
    
    setProperty('gfGroup.visible', false);
    
    makeLuaSprite('ErrorWindows', 'A Fatal Error',0,0);
		scaleObject('ErrorWindows', 0.8,0.82);
		setObjectCamera('ErrorWindows', 'other')
    
end
function onBeatHit()
    objectPlayAnimation('fatalityBg2','moviment',false)
    objectPlayAnimation('fatalityBg2-5','moviment',false)
    objectPlayAnimation('fatalityBg3','moviment',false)
end

function onStepHit()
    if songName == 'Fatality' then
        if curStep == 256 then
            removeLuaSprite('fatalityBg1')
            addLuaSprite('fatalityBg2-5')
            addLuaSprite('fatalityBg2')
        end
        if curStep == 1984 then
            removeLuaSprite('fatalityBg2')
            addLuaSprite('fatalityBg3')
            setProperty('boyfriend.x',850)
        end
     if curStep == 2560 then
     addLuaSprite('ErrorWindows', true)
    end
end
end