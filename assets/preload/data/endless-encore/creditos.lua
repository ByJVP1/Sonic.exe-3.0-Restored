function onStepHit()--Bueno Este Metodo Es Muy Facil De Usar, Lo Cree En Un Dia Si me Dan creditos Por El Esfuerso Se Los Agradeceria Soy Perez Sen Y Eso Es TODO :)
	if curStep == 12 then

		makeLuaSprite('box', 'box', 433, -1200);
		scaleObject('box', 1.0, 1.0);
		addLuaSprite('box', false);
		setProperty('box.visible', true);
		setObjectCamera('box', 'other');

		makeLuaText('Text', "PORT A PC/ANDROID Nickobelit\nBF Myt\n\nOptimización\nNickobelit\n\nLua de Créditos\nPérez-Sen", 299, 485, -700); 
		setTextSize('Text', 29);
		setObjectCamera('Text', 'other');
		addLuaText('Text', true);

		doTweenY("box", "box", -0, 0.8, "linear")	
		doTweenY("Text", "Text", 250, 1, "linear")	
	end
	if curStep == 138 then
		doTweenY("box", "box", -780, 0.8, "linear")	
		doTweenY("Text", "Text", -350, 0.7, "linear")
	end
	end

--Aqui Nickobelit ,el que lo Borre es fan de Kunno xd