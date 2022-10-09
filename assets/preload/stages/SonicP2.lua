function onCreate()
	-- background shit
	
	makeLuaSprite('thefrickinbg', 'SonicP2/Youcantrunbg', -285, -55); --imagine being lazy lol
	scaleObject('thefrickinbg', 1.95, 1.95);
	setProperty('thefrickinbg.antialiasing', true);
	addLuaSprite('thefrickinbg', false);

	makeLuaSprite('BlackFlash', 'dablack', -700, 0);
	scaleObject('BlackFlash', 2,2);
	setProperty('BlackFlash.visible', true);
	addLuaSprite('BlackFlash', true);
	
	makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', true)
    
   makeLuaSprite('circle', 'StartScreens/Circle-YouCantRun', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-YouCantRun', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    setProperty('gfGroup.visible', false);
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');
	
end
function onSongStart()
setProperty('timeBar.color', getColorFromHex('ff0015'))
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then
		if value1 == 'show' then
        setProperty('scoreTxt.visible', true)
        setProperty('healthBar.visible', true)
        setProperty('healthBarBG.visible', true)
        setProperty('iconP1.visible', true)
        setProperty('iconP2.visible', true)
        setProperty('timeTxt.visible', true)
        setProperty('timeBar.visible', true)
        setProperty('timeBarBG.visible', true)
        setPropertyFromGroup('opponentStrums', 0, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 1, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 2, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 3, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 0, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 1)
end
		
		if value1 == 'hide' then
        setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false) 
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
        setProperty('timeTxt.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeBarBG.visible', false)
        setPropertyFromGroup('opponentStrums', 0, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 1, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
        setPropertyFromGroup('opponentStrums', 3, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 0, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 0)
    end
	end
end

function onStepHit()
	if curStep == 528 then
	addLuaScript('custom_events/SonicTypeHud')
		setProperty('defaultCamZoom',1.1)

		setCharacterX('boyfriend', 550);

		setCharacterY('boyfriend', -18);--Wizzy Referencia :0

		setCharacterX('dad', 120);

		setCharacterY('dad', -80);

		setProperty('thefrickinbg.visible', false);

		makeLuaSprite('thefrickinbg2', 'SonicP2/GreenHill', -280,-320);
       scaleObject('thefrickinbg2',7,7)
		addLuaSprite('thefrickinbg2', false);
		setProperty('thefrickinbg2.antialiasing', false);
	
	end
if curStep == 630 then--Mucho Texto aaaa (Nickobelit)
makeLuaText('Im', 'Im', 1200, 35, 525)
        setTextFont('Im', 'vcr.ttf')
        setTextColor('Im', 'FF0000')
        setTextBorder('Im',1,'000000')
        setTextSize('Im', 50);
        addLuaText('Im')
        setTextAlignment('Im', 'center')
        setObjectCamera("Im", 'hud');
       end

 if curStep == 635 then
makeLuaText('Gonna', 'Im Gonna', 1200, 35, 525)
        setTextFont('Gonna', 'vcr.ttf')
        setTextColor('Gonna', 'FF0000')
        setTextBorder('Gonna',1,'000000')
        setTextSize('Gonna', 50);
        addLuaText('Gonna')
        setTextAlignment('Gonna', 'center')
        setObjectCamera("Gonna", 'hud');
        removeLuaText('Im')
        end

         if curStep == 640 then
makeLuaText('Much', 'Im Gonna So Much', 1200, 35, 525)
        setTextFont('Much', 'vcr.ttf')
        setTextColor('Much', 'FF0000')
        setTextBorder('Much',1,'000000')
        setTextSize('Much', 50);
        addLuaText('Much')
        setTextAlignment('Much', 'center')
        setObjectCamera("Much", 'hud');
        removeLuaText('Gonna')
        end

             if curStep == 643 then
makeLuaText('Fun', 'Fun', 1200, 35, 525)
        setTextFont('Fun', 'vcr.ttf')
        setTextColor('Fun', 'FF0000')
        setTextBorder('Fun',1,'000000')
        setTextSize('Fun', 50);
        addLuaText('Fun')
        setTextAlignment('Fun', 'center')
        setObjectCamera("Fun", 'hud');
        removeLuaText('Much')
        end

        if curStep == 647 then
makeLuaText('Tearing', 'Tearing', 1200, 35, 525)
        setTextFont('Tearing', 'vcr.ttf')
        setTextColor('Tearing', 'FF0000')
        setTextBorder('Tearing',1,'000000')
        setTextSize('Tearing', 50);
        addLuaText('Tearing')
        setTextAlignment('Tearing', 'center')
        setObjectCamera("Tearing", 'hud');
        removeLuaText('Fun')
        end

        if curStep == 650 then
makeLuaText('Body', 'Your Body', 1200, 35, 525)
        setTextFont('Body', 'vcr.ttf')
        setTextColor('Body', 'FF0000')
        setTextBorder('Body',1,'000000')
        setTextSize('Body', 50);
        addLuaText('Body')
        setTextAlignment('Body', 'center')
        setObjectCamera("Body", 'hud');
        removeLuaText('Tearing')
        end

        if curStep == 654 then
        makeLuaText('Apart', 'APART!!!', 1200, 35, 525)
        setTextFont('Apart', 'vcr.ttf')
        setTextColor('Apart', 'FF0000')
        setTextBorder('Apart',1,'000000')
        setTextSize('Apart', 50);
        addLuaText('Apart')
        setTextAlignment('Apart', 'center')
        setObjectCamera("Apart", 'hud');
        removeLuaText('Body')
        end

        if curStep == 662 then
removeLuaText('Apart')
end

if curStep == 768 then
        makeLuaText('why', 'WHY!!!', 1200, 35, 525)
        setTextFont('why', 'vcr.ttf')
        setTextColor('why', 'FF0000')
        setTextBorder('why',1,'000000')
        setTextSize('why', 50);
        addLuaText('why')
        setTextAlignment('why', 'center')
        setObjectCamera("why", 'hud');
        end

if curStep == 772 then
        makeLuaText('you', 'WHY YOU!!!', 1200, 35, 525)
        setTextFont('you', 'vcr.ttf')
        setTextColor('you', 'FF0000')
        setTextBorder('you',1,'000000')
        setTextSize('you', 50);
        addLuaText('you')
        setTextAlignment('you', 'center')
        setObjectCamera("you", 'hud');
        removeLuaText('why')
        end
if curStep == 779 then
        makeLuaText('little', 'WHY YOU LITT-!!!', 1200, 35, 525)
        setTextFont('little', 'vcr.ttf')
        setTextColor('little', 'FF0000')
        setTextBorder('little',1,'000000')
        setTextSize('little', 50);
        addLuaText('little')
        setTextAlignment('little', 'center')
        setObjectCamera("little", 'hud');
        removeLuaText('you')
        end

if curStep == 781 then
        makeLuaText('little2', 'WHY YOU LITTLE!!!', 1200, 35, 525)
        setTextFont('little2', 'vcr.ttf')
        setTextColor('little2', 'FF0000')
        setTextBorder('little2',1,'000000')
        setTextSize('little2', 50);
        addLuaText('little2')
        setTextAlignment('little2', 'center')
        setObjectCamera("little2", 'hud');
        removeLuaText('little')
        removeLuaText('why')
        end

	if curStep == 784 then
removeLuaText('little2')
setProperty('scoreTxt.visible',true);
	setProperty("timeTxt.visible",true);
	setProperty("timeBar.visible",true);
	setProperty('timeBarBG.visible', true)
    setProperty('healthBar.x', 350)
    removeLuaText('#',true)
    removeLuaText('-',true)
    removeLuaText('_',true)
    removeLuaSprite('missess',true)
    removeLuaSprite('timee',true)
    removeLuaSprite('scoree',true)
    
		setProperty('defaultCamZoom',0.8)

		setCharacterX('boyfriend', 830);

		setCharacterY('boyfriend', 100);

		setCharacterX('dad', 30);

		setCharacterY('dad', 110);
	
		setProperty('thefrickinbg2.visible', false);

		setProperty('thefrickinbg.visible', true);
    end

	    if curStep == 1272 then
        makeLuaText('Why', 'WHY', 1200, 35, 525)
        setTextFont('Why', 'vcr.ttf')
        setTextColor('Why', 'FF0000')
        setTextBorder('Why',1,'000000')
        setTextSize('Why', 50);
        addLuaText('Why')
        setTextAlignment('Why', 'center')
        setObjectCamera("Why", 'hud');
        end

        if curStep == 1274 then
        makeLuaText('cant', "WHY CAN'T", 1200, 35, 525)
        setTextFont('cant', 'vcr.ttf')
        setTextColor('cant', 'FF0000')
        setTextBorder('cant',1,'000000')
        setTextSize('cant', 50);
        addLuaText('cant')
        setTextAlignment('cant', 'center')
        setObjectCamera("cant", 'hud');
        removeLuaText('Why')
	    end

        if curStep == 1276 then
        makeLuaText('I', "WHY CAN'T I", 1200, 35, 525)
        setTextFont('I', 'vcr.ttf')
        setTextColor('I', 'FF0000')
        setTextBorder('I',1,'000000')
        setTextSize('I', 50);
        addLuaText('I')
        setTextAlignment('I', 'center')
        setObjectCamera("I", 'hud');
        removeLuaText('cant')
        end

        if curStep == 1280 then
        makeLuaText('Kill', "WHY CAN'T I KILL", 1200, 35, 525)
        setTextFont('Kill', 'vcr.ttf')
        setTextColor('Kill', 'FF0000')
        setTextBorder('Kill',1,'000000')
        setTextSize('Kill', 50);
        addLuaText('Kill')
        setTextAlignment('Kill', 'center')
        setObjectCamera("Kill", 'hud');
        removeLuaText('I')
        end

        if curStep == 1283 then
        makeLuaText('You', "WHY CAN'T I KILL YOU", 1200, 35, 525)
        setTextFont('You', 'vcr.ttf')
        setTextColor('You', 'FF0000')
        setTextBorder('You',1,'000000')
        setTextSize('You', 50);
        addLuaText('You')
        setTextAlignment('You', 'center')
        setObjectCamera("You", 'hud');
        removeLuaText('Kill')
        end

        if curStep == 1287 then
        makeLuaText('worm', "WHY CAN'T I KILL YOU WORM!!!", 1200, 35, 525)
        setTextFont('worm', 'vcr.ttf')
        setTextColor('worm', 'FF0000')
        setTextBorder('worm',1,'000000')
        setTextSize('worm', 50);
        addLuaText('worm')
        setTextAlignment('worm', 'center')
        setObjectCamera("worm", 'hud');
        removeLuaText('You')
        end

       if curStep == 1294 then
       removeLuaText('worm')--Si oh mejor matalo y me dejo de hacer el code xd (Nickobelit)
       end

       if curStep == 1544 then
        makeLuaText('just', "JUST", 1200, 35, 525)
        setTextFont('just', 'vcr.ttf')
        setTextColor('just', 'FF0000')
        setTextBorder('just',1,'000000')
        setTextSize('just', 50);
        addLuaText('just')
        setTextAlignment('just', 'center')
        setObjectCamera("just", 'hud');
        end

        if curStep == 1552 then
        makeLuaText('die', "JUST DI-!!!!", 1200, 35, 525)
        setTextFont('die', 'vcr.ttf')
        setTextColor('die', 'FF0000')
        setTextBorder('die',1,'000000')
        setTextSize('die', 50);
        addLuaText('die')
        setTextAlignment('die', 'center')
        setObjectCamera("die", 'hud');
        removeLuaText('just')
        end

        if curStep == 1564 then
       makeLuaText('die2', "JUST DIE!!!", 1200, 35, 525)
        setTextFont('die2', 'vcr.ttf')
        setTextColor('die2', 'FF0000')
        setTextBorder('die2',1,'000000')
        setTextSize('die2', 50);
        addLuaText('die2')
        setTextAlignment('die2', 'center')
        setObjectCamera("die2", 'hud');
        removeLuaText('die')
        end

       if curStep == 1570 then
       removeLuaText('die2')
       end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)  
	if curStep >= 138 and curStep < 510 then
    cameraShake('game', 0.01, 0.055)
	end
	if curStep >= 756 and curStep < 1451 then
    cameraShake('game', 0.01, 0.055)
	end
end