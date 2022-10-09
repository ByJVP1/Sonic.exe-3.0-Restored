function onCreate()
    makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', false)
   makeLuaSprite('circle', 'StartScreens/Circle-endless', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-endeavors', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    
    setProperty('gfGroup.visible', false);
    
    makeLuaSprite('endlessSky','FunInfiniteStage/sonicFUNsky',-360,0)
    setProperty('endlessSky.antialiasing',false)
    scaleObject('endlessSky',0.85,0.85)
    addLuaSprite('endlessSky')
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd'); --put in mods/music/
    if not lowQuality then
        makeAnimatedLuaSprite('endlessTreeBack','FunInfiniteStage/Majin Boppers Back',100,-190)
        addAnimationByPrefix('endlessTreeBack','tree','MajinBop2 instance 1',24,false)
        addLuaSprite('endlessTreeBack')
        end
    makeLuaSprite('endlessBG2','FunInfiniteStage/Bush2',-100,400)
    addLuaSprite('endlessBG2')
    if not lowQuality then
    makeAnimatedLuaSprite('endlessTreeFront2','FunInfiniteStage/Majin Boppers Front',-245,-190)
    addAnimationByPrefix('endlessTreeFront2','tree','MajinBop1 instance 1',24,false)
    scaleObject('endlessTreeFront2',2,2)
    addLuaSprite('endlessTreeFront2')
end
    makeLuaSprite('endlessGround','FunInfiniteStage/floor BG',-360,690)
    addLuaSprite('endlessGround')
    if not lowQuality then
        makeAnimatedLuaSprite('endlessSonic','FunInfiniteStage/majin FG2',-300,800)
        addAnimationByPrefix('endlessSonic','idle','majin front bopper2',24,false)
        addLuaSprite('endlessSonic',true)
        setScrollFactor('endlessSonic',1.1,1.1)

        makeAnimatedLuaSprite('endlessSonic2','FunInfiniteStage/majin FG1',1000,800)
        addAnimationByPrefix('endlessSonic2','idle','majin front bopper1',24,false)
        addLuaSprite('endlessSonic2',true)
        setScrollFactor('endlessSonic2',1.1,1.1)
end
end

function onBeatHit()
    objectPlayAnimation('endlessTreeBack','tree',true)
    objectPlayAnimation('endlessTreeFront','tree',true)
    objectPlayAnimation('endlessTreeFront2','tree',true)
    objectPlayAnimation('endlessSonic','idle',true)
    objectPlayAnimation('endlessSonic2','idle',true)
end

