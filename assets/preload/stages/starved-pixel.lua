local width = 0
function onCreate()
	makeLuaText('perezgua', "PORTEADO POR | PEREZ SEN ", 0, 2, 700); 
	setTextSize('perezgua', 20);
	setObjectCamera('perezgua', 'other');

doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')

makeLuaSprite('camara negra', 'starved/camara negra', 700, -295);
scaleObject('camara negra', 2.47, 2.4);
addLuaSprite('camara negra', false);
setProperty('camara negra.alpha', 0.0003);
setProperty('camara negra.alpha', 7);
doTweenAlpha('tweenCutOffAlpha', 'camara negra', 0, 7, 'linear');
setProperty('camara negra.visible', true);

width = getProperty("stardustFloor.width") 

makeLuaSprite('stardustBg', 'starved/stardustBg', -1000, -750);
 width = getProperty("stardustBg.width")    
 setLuaSpriteScrollFactor('stardustBg', 1, 1);
  scaleObject('stardustBg', 2,2);
  addLuaSprite('stardustBg', false);
  setProperty('stardustBg.visible', false);
  
  makeLuaSprite('stardustBg2', 'starved/stardustBg2', 3600, -750);
 width = getProperty("stardustBg2.width")    
 setLuaSpriteScrollFactor('stardustBg2', 1, 1);
  scaleObject('stardustBg2', 2,2);
  addLuaSprite('stardustBg2', false);
  setProperty('stardustBg2.visible', false);
 
 makeLuaSprite('stardustFloor', 'starved/stardustFloor', -1000, -1300);
 width = getProperty("stardustFloor.width")    
 setLuaSpriteScrollFactor('stardustFloor', 1, 1);
  scaleObject('stardustFloor', 2,2);
  addLuaSprite('stardustFloor', true);
  setProperty('stardustFloor.visible', false);
  
  makeLuaSprite('stardustFloor2', 'starved/stardustFloor2', 3600, -1300);
    width = getProperty("stardustFloor2.width");
 setLuaSpriteScrollFactor('stardustFloor2', 1, 1);
  scaleObject('stardustFloor2',2,2);
  addLuaSprite('stardustFloor2', true);
  setProperty('stardustFloor2.visible', false)
  
  makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', false)
   makeLuaSprite('circle', 'StartScreens/Circle-prey', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-prey', -1280,0)
    addLuaSprite('text', true)

    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
  
precacheImage('starved/Furnace_sheet')
precacheImage('starved/camara negra')
precacheImage('starved/stardustBg')
precacheImage('starved/stardustBg2')
precacheImage('starved/stardustFloor')
precacheImage('starved/stardustFloor2')
precacheImage('bars')
precacheImage('flash')
precacheImage('red2')
precacheImage('out')
precacheImage('black')
setProperty('gfGroup.visible', false);
end
function onEvent(name,value1)
	if name == 'Perez Sen' then 
		if value1 == '1' then
			makeLuaSprite('out', 'out', 0, 0);
			setLuaSpriteScrollFactor('out', 0, 0);
			setProperty('out.alpha', 0.0006);
			setObjectCamera('out', 'other');
			setProperty('out.alpha', 1);
			doTweenAlpha('tweenCutOffAlpha', 'out', 0, 8.0, 'linear');
			setObjectCamera('out', 'other');
			addLuaSprite('out', false);
			end
		if value1 == '2' then
			makeLuaSprite('flash', 'flash', 0, 0);
			setLuaSpriteScrollFactor('flash', 0, 0);
			setProperty('flash.alpha', 0.0006);
			setObjectCamera('flash', 'other');
			setProperty('flash.alpha', 1);
			doTweenAlpha('tweenCutOffAlpha', 'flash', 0, 1.9, 'linear');
			setObjectCamera('flash', 'other');
			addLuaSprite('flash', false);
			doTweenColor('timeBar', 'timeBar', '004AEA ', 0.5, 'circOut')

			setProperty('camara negra.visible', false);
		end
		if value1 == '3' then
			doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
		end
		if value1 == '4' then
			doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
		end
		if value1 == '5' then
makeLuaSprite('black', 'black', -20, -20);
			setLuaSpriteScrollFactor('black', 0, 0);
			addLuaSprite('black', true);
			scaleObject('black', 3, 3);
			doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
			makeLuaSprite('red', 'red2', 0, 0);
			setLuaSpriteScrollFactor('red', 0, 0);
			setProperty('red.alpha', 1);
			doTweenColor('red', 'red', 'FF0000 ', 0.5, 'circOut')
			doTweenAlpha('tweenCutOffAlpha2', 'red', 0, 1.7, 'linear');
			addLuaSprite('red', true);
			setObjectCamera('black', 'other');
			setObjectCamera('red', 'other');
		end
		if value1 == '6' then
			doTweenX("dad", "dad", 1800, 2.4, "linear")	
	end
end
end
