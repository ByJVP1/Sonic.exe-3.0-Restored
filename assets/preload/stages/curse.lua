 function onCreate()
 makeAnimatedLuaSprite('MaleBG', 'curse/MaleBG', -1800, -300); 
addAnimationByPrefix('MaleBG', 'anim', 'Anim', 10, true); 
  scaleObject('MaleBG', 2,2);
  addLuaSprite('MaleBG', false);

  makeAnimatedLuaSprite('static', 'STATIC', -650, -120);
  addAnimationByPrefix('static', 'idle', 'staticBackground', 24, true);
  setLuaSpriteScrollFactor('static', 1, 1);
  scaleObject('static', 3, 3);

  setProperty('static.alpha', 0)
  setCharacterX('gf', 400);
  setCharacterY('gf', 150);
  makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', true)
    
   makeLuaSprite('circle', 'StartScreens/Circle-malediction', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-malediction', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
end

function onStepHit()
if curStep == 712 then
doTweenAlpha('Character Visibility', 'MaleBG', 0,0.5, 'quadIn');
doTweenAlpha('Character Visibility1', 'gf', 0,0.5, 'quadIn');
end
  if curStep == 720 then
   addLuaSprite('static', false)
    setProperty('static.alpha', 0.5)
  end
  if curStep == 976 then
    doTweenAlpha('fadeInn', 'static', 0, 0.5, 'linear')
    triggerEvent('Change Character','dad','curse_pissbaby');
  end
if curStep == 1168 then
    triggerEvent('Change Character','dad','curse_happy');
    doTweenAlpha('Character Visibility2', 'MaleBG', 1, 0.5, 'quadIn');
    doTweenAlpha('Character Visibility3', 'gf', 1, 0.5, 'quadIn');
end
if curStep == 1176 then
makeLuaSprite('BlackFlash', 'black', -700, -500);
		scaleObject('BlackFlash', 2,2);
		addLuaSprite('BlackFlash', true)
end
if curStep == 1190 then
makeLuaText('things','Things Are...',1280,0,500)
        setTextColor('things','AC8147')
        setTextBorder('things',1,'000000')
        setTextFont('things','vcr.ttf')
        setTextSize('things', 60);
        setTextAlignment('things', 'center')
        setObjectCamera("things", 'hud');
        addLuaText('things')
        end
if curStep == 1202 then
makeLuaText('ok','Ok?',1280,0,500)
        setTextColor('ok','AC8147')
        setTextBorder('ok',1,'000000')
        setTextFont('ok','vcr.ttf')
        setTextSize('ok', 60);
        setTextAlignment('ok', 'center')
        setObjectCamera("ok", 'hud');
        removeLuaText('things')
        addLuaText('ok')
        end

        if curStep == 1216 then
makeLuaText('then','Then...',1280,0,500)
        setTextColor('then','AC8147')
        setTextBorder('then',1,'000000')
        setTextFont('then','vcr.ttf')
        setTextSize('then', 60);
        setTextAlignment('then', 'center')
        setObjectCamera("then", 'hud');
        removeLuaText('ok')
        addLuaText('then')
        end 
        
        if curStep == 1224 then
makeLuaText('can','Then Can We...',1280,0,500)
        setTextColor('can','AC8147')
        setTextBorder('can',1,'000000')
        setTextFont('can','vcr.ttf')
        setTextSize('can', 60);
        setTextAlignment('can', 'center')
        setObjectCamera("can", 'hud');
        removeLuaText('then')
        addLuaText('can')
        end 
if curStep == 1232 then
makeLuaText('try','Then Can We Try Again?...',1280,0,500)
        setTextColor('try','AC8147')
        setTextBorder('try',1,'000000')
        setTextFont('try','vcr.ttf')
        setTextSize('try', 60);
        setTextAlignment('try', 'center')
        setObjectCamera("try", 'hud');
        removeLuaText('can')
        addLuaText('try')
        end 
if curStep == 1243 then
removeLuaText('try')
removeLuaSprite('BlackFlash',true)
setProperty('defaultCamZoom',1);
triggerEvent('Play Animation','B_FezzHappy','gf');
triggerEvent('Play Animation','singRIGHT','bf');
end
end
function onBeatHit()
	objectPlayAnimation('MaleBG','anim',true)
end