function onCreate()
	setTextString("botplayTxt", " ")
	setProperty('skipCountdown', true)

	makeAnimatedLuaSprite('wave','wave', 0, 0);
        setObjectCamera('wave', 'hud')
        addLuaSprite('wave', true);
        addAnimationByPrefix('wave','idle','idle',24,false);
		setProperty('wave.visible', false)
		
		makeLuaSprite('white','white', 0, 0);
        setObjectCamera('white', 'hud')
        addLuaSprite('white', true);
		setProperty('white.alpha', 0);

	makeLuaSprite('bg', 'toes', -450, -250)
	setObjectOrder('bg', 1)
	scaleObject('bg', 0.75, 0.75)
	setProperty('bg.antialiasing', false)
	addLuaSprite('bg')
	setProperty('bg.visible', false)

	makeAnimatedLuaSprite('wave2','wave2', -250, -50);
	setObjectOrder('wave2', 2)
	addLuaSprite('wave2', true);
	setProperty('wave2.alpha', 0.1);
	scaleObject('wave2', 2.2, 2.2)
	setProperty('wave2.visible', false)

	addAnimationByPrefix('wave2', 'idle', 'idle', 24, true)
	addAnimationByPrefix('wave2', 'bop', 'bop', 24, false)

	makeAnimatedLuaSprite('static','static', 0, 0);
	setObjectCamera('static', 'hud')
	setObjectOrder('static', 0)
	addAnimationByPrefix('static','static','idle',24,true);
	setScrollFactor('static', 0, 0)
	addLuaSprite('static', true);
	setProperty('static.alpha', 0.5);

	makeAnimatedLuaSprite('dust','dust', 0, 0);
	setObjectCamera('dust', 'hud')
	setObjectOrder('dust', 0)
	addAnimationByPrefix('dust','dust','idle',24,true);
	screenCenter('dust')
	setScrollFactor('dust', 0, 0)
	scaleObject('dust', 1.7, 1.7)
	addLuaSprite('dust', true);
	setProperty('dust.visible', false)

	makeAnimatedLuaSprite('dust3','dust3', -500, 0);
	setObjectOrder('dust3', 5)
	addAnimationByPrefix('dust3','dust3','idle',24,true);
	screenCenter('dust3')
	setScrollFactor('dust3', 0, 0)
	scaleObject('dust3', 2, 2)
	addLuaSprite('dust3', true);
	setProperty('dust3.visible', false)

	makeAnimatedLuaSprite('tiles','tiles', 0, 0);
	--setObjectCamera('static', 'hud')
	setObjectOrder('tiles', 1)
	addAnimationByPrefix('tiles','tiles','idle',24,true);
	setScrollFactor('tiles', 0, 0)
	scaleObject('tiles', 3, 3)
	screenCenter('tiles')
	addLuaSprite('tiles', true);
	setProperty('tiles.visible', false)

	makeLuaSprite('redtoes2', 'redtoes2', 0, 0)
	setObjectOrder('redtoes2', 10)
	scaleObject('redtoes2', 0.7, 0.7)
	setScrollFactor('redtoes2', 0.2, 0.2)
	screenCenter('redtoes2')
	addLuaSprite('redtoes2', true)
	setProperty('redtoes2.visible', false)

	makeAnimatedLuaSprite('drake', 'drake', -530, -300)
	addAnimationByPrefix('drake', 'dance', 'drake idle', 12, true)
	scaleObject('drake', 4.2, 2.2)
	setProperty('drake.color', 0xff1919)
	setScrollFactor('drake', 0, 0)
	setProperty('drake.visible', false)
	addLuaSprite('drake')
	setObjectOrder('drake', 1)

	makeAnimatedLuaSprite('drake2', 'drake', 1810, -300)
	addAnimationByPrefix('drake2', 'dance', 'drake idle', 12, true)
	scaleObject('drake2', 4, 2.2)
	setProperty('drake2.color', 0xff1919)
	setScrollFactor('drake2', 0, 0)
	setProperty('drake2.visible', false)
	setProperty('drake2.flipX', true)
	addLuaSprite('drake2')
	setObjectOrder('drake2', 1)

	makeLuaSprite('white2', 'white', 0, 0)
	setObjectOrder('white2', 3)
	scaleObject('white2', 10, 10)
	setScrollFactor('white2', 0, 0)
	addLuaSprite('white2')
	screenCenter('white2')
	setProperty('white2.alpha', 0)

	makeLuaSprite('guitar', 'guitar', 530, 700)
	setObjectCamera('guitar', 'other')
	scaleObject('guitar', 0.35, 0.35)
	setProperty('guitar.angle', 20)
	addLuaSprite('guitar')

	makeAnimatedLuaSprite('fire', 'fire', -20, 0)
	addAnimationByPrefix('fire', 'dance', 'firebg', 24, true)
	scaleObject('fire', 2, 2)
	setProperty('fire.visible', false)
	addLuaSprite('fire')

	makeLuaSprite('evil', 'evil', 450, -1500)
	scaleObject('evil', 1, 1)
	setProperty('evil.alpha', 0)
	addLuaSprite('evil')

	makeAnimatedLuaSprite('fire2', 'fire2', 0, 0)
	addAnimationByPrefix('fire2', 'idle', 'idle', 24, true)
	scaleObject('fire2', 2, 2)
	setProperty('fire2.visible', false)
	setScrollFactor('fire2', 0, 0)
	screenCenter('fire2')
	addLuaSprite('fire2')

	makeAnimatedLuaSprite('fire4', 'fire4', 0, 0)
	addAnimationByPrefix('fire4', 'idle', 'idle', 24, true)
	scaleObject('fire4', 2, 2)
	setProperty('fire4.visible', false)
	setScrollFactor('fire4', 0, 0)
	screenCenter('fire4')
	addLuaSprite('fire4')


	makeAnimatedLuaSprite('czerog', 'czerog', 0, 260)
	addAnimationByPrefix('czerog', 'dance', 'czerog idle', 24, true)
	setScrollFactor('czerog', 0, 0)
	setObjectCamera('czerog', 'other')
	addLuaSprite('czerog', true)

	makeLuaSprite('toetality', 'toetality', 500, -500)
	scaleObject('toetality', 0.4, 0.4)
	setObjectCamera('toetality', 'hud')
	addLuaSprite('toetality')

	makeLuaSprite('toetality2', 'toetality', 0, 700)
	scaleObject('toetality2', 0.4, 0.4)
	setObjectCamera('toetality2', 'other')
	screenCenter('toetality2', 'x')
	addLuaSprite('toetality2')

	screenCenter('czerog', 'x')

	precacheImage('redtoes')
	precacheImage('toes')
	precacheImage('evil')
end

function onCreatePost()
	setTextString("botplayTxt", " ")
	luaDebugMode = true
	triggerEvent('Camera Follow Pos', 1250, 700)
	setProperty('healthBar.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('camZooming', false)
	setProperty('cameraSpeed', 200)
	setProperty('dad.alpha', 0)
	setProperty('boyfriend.alpha', 0)
	setProperty('camHUD.alpha', 0)
	setProperty('camGame.alpha', 0)
	setProperty('comboGroup.visible', false)
end

function onSongStart()
	setProperty('cameraSpeed', 1)
end

function onStepHit()
	if curStep == 16 then
		setTextString("botplayTxt", " ")
		doTweenAlpha('camFUCK', 'camGame', 1, 4.2)
	end
	if curStep == 63 then
		setProperty('camZooming', true)
	end
	if curStep == 96 then
		triggerEvent('Camera Follow Pos', nil,  nil)
		dadzoom = 0.8
		doTweenAlpha('camFUCKhello', 'camHUD', 1, 4.2)
		doTweenAlpha('dadhello', 'dad', 1, 4.2)
		doTweenAlpha('bfhello', 'boyfriend', 1, 4.2)
		doTweenAlpha('sigma', 'piano1_video', 0, 4.2)
		doTweenAlpha('czer', 'czerog', 0, 4.2)
	end
	if curStep == 320 then
		setProperty('camGame.alpha', 0)
	end
	if curStep == 336 then
		setProperty('dad.visible', false)
		doTweenAlpha('camgamehello', 'camGame', 1, 1.2)
		setProperty('fucker.visible', true)
		setProperty('bg.visible', true)

	end
	if curStep == 340 then
		doTweenX('fucker', 'fucker', getProperty('fucker.x') - 1300, 1.5, 'cubeIn')
		doTweenAlpha('white', 'd', 1, 1.5, 'cubeInOut')
	end
	if curStep == 351 then
		setProperty('camZooming', true)
		setProperty('static.visible', false)

	end
	if curStep == 544 then
		setProperty('camGame.visible', false)
	end
	if curStep == 548 then
		setObjectCamera('d', 'hud')
		doTweenAlpha('whitehere', 'd', 1, 1.4, 'cubeIn')
	end
	if curStep == 560 then
		setProperty('camGame.visible', true)
		setProperty('wave2.visible', true)
	end
	if curStep == 672 then
		setObjectCamera('d', 'camHUD')
		doTweenAlpha('poop', 'd', 1, 1)
	end
	if curStep == 688 then
		doTweenY('face', 'face', 150, 2, 'cubeInOut')
	end
	if curStep == 697 then
		doTweenX('fuck', 'face.scale', 0.8, 1, 'cubeOut')
		doTweenAngle('skibidi', 'face', -720, 1.5, 'cubeInOut')
	end
	if curStep == 720 then
		setProperty('d.alpha', 0)
		setProperty('tiles.visible', true)
		setProperty('bg.visible', false)
		setProperty('wave2.visible', false)
	end
	if curStep == 775 then
		doTweenX('drakeleft', 'drake', -2900, 3)
		doTweenX('drake2left', 'drake2', -2900, 1.51)
	end
	if curStep == 784 then
		setProperty('camGame.visible', false)
		setProperty('tiles.visible', false)
		setProperty('dust3.visible', true)
		setProperty('dust.visible', true)
		setProperty('wave2.visible', true)
	end
	if curStep == 792 then
		doTweenAlpha('whitehere', 'd', 1, 1, 'cubeIn')
	end
	if curStep == 798 then
		setProperty('boyfriend.x', 2500)
		setProperty('dad.x', 2500)
		doTweenX('dadin', 'dad', 800, 1.5, 'cubeInOut')
	end
	if curStep == 800 then
		setProperty('camGame.visible', true)
		setProperty('drake.visible', true)
		setProperty('drake2.visible', true)
		triggerEvent('Camera Follow Pos', 1250, 700)
		loadGraphic('bg', 'redtoes')
		setProperty('redtoes2.visible', true)
	end
	if curStep == 828 then
		doTweenX('dadout', 'dad', -1000, 1, 'cubeInOut')
		doTweenX('bfin', 'boyfriend', 800, 1.3, 'cubeInOut')
	end
	if curStep == 860 then
		doTweenX('bfout', 'boyfriend', -1000, 1, 'cubeInOut')
		doTweenX('dadin', 'dad', 800, 1.3, 'cubeInOut')
	end
	if curStep == 864 then
		setProperty('defaultCamZoom', 0.6)
	end
	if curStep == 880 then
		setProperty('face2.alpha', 1)
		doTweenAlpha('gfasdvc', 'face2', 0, 0.35)
	end
	if curStep == 883 then
		setProperty('face2.alpha', 1)
		doTweenAlpha('fasvcsca', 'face2', 0, 0.35)
		setProperty('face2.x', 960)
		setProperty('face2.y', 150)
	end
	if curStep == 886 then
		setProperty('face2.alpha', 1)
		doTweenAlpha('asdfvzxc', 'face2', 0, 0.35)
		setProperty('face2.x', 100)
		setProperty('face2.y', 250)
	end
	if curStep == 889 then
		setProperty('face2.alpha', 1)
		doTweenAlpha('ydsfsc', 'face2', 0, 0.35)
		setProperty('face2.x', 960)
		setProperty('face2.y', 350)
	end
	if curStep == 892 then
		setProperty('face2.alpha', 1)
		doTweenAlpha('ascvas', 'face2', 0, 0.25)
		setProperty('face2.x', 100)
		setProperty('face2.y', 350)
	end
	if curStep == 894 then
		setProperty('face2.alpha', 1)
		doTweenAlpha('ascasc', 'face2', 0, 0.35)
		setProperty('face2.x', 960)
		setProperty('face2.y', 50)
	end
	if curStep == 896 then
		setProperty('defaultCamZoom', 0.75)
	end
	if curStep == 900 then
		doTweenX('dadout', 'dad', -1100, 1, 'cubeInOut')
		doTweenX('bfin', 'boyfriend', 710, 1, 'cubeInOut')
	end
	if curStep == 908 then
		doTweenX('bfout', 'boyfriend', -1000, 0.9, 'cubeInOut')
	end
	if curStep == 912 then
		setProperty('defaultCamZoom', 0.6)
		setProperty('dad.visible', false)
		setProperty('boyfriend.visible', false)
	end
	if curStep == 917 then
		doTweenAlpha('whitehere', 'd', 1, 1.4, 'cubeIn')
	end
	if curStep == 928 then
		triggerEvent('Camera Follow Pos', nil,  nil)
		removeLuaSprite('drake', true)
		removeLuaSprite('drake2', true)
		setProperty('dad.visible', true)
		setProperty('boyfriend.visible', true)
		setProperty('bg.visible', true)
		dadzoom = 0.8
	end
	if curStep == 1008 then
		doTweenAlpha('whote', 'd', 1, 2, 'cubeIn')
		setObjectCamera('d', 'hud')
	end
	if curStep == 1024 then
		setProperty('camGame.visible', false)
	end
	if curStep == 1039 then
		setProperty('defaultCamZoom', 1.5)
	end
	if curStep == 1040 then
		setProperty('bg.visible', false)
		setProperty('dust.visible', false)
		setProperty('dust2.visible', false)
		setProperty('static.visible', true)
		setProperty('camGame.visible', true)
		setProperty('redtoes2.visible', false)
		setProperty('static.alpha', 0.2);
		doTweenAlpha('fadeout', 'd', 0, 1.5, 'cubeInOut')
	end
	if curStep == 1096 then
		setProperty('static.alpha', 0.1);
	end
	if curStep == 1104 then
		setProperty('static.visible', true)
	end
	if curStep == 1152 then
		doTweenAlpha('skibidi toilet', 'd', 1, 1.9, 'cubeInOut')
	end
	if curStep == 1168 then
		doTweenY('ohio rizz', 'guitar', 100, 2, 'cubeInOut')
		setProperty('static.visible', false)
	end
	if curStep == 1232 then
		setProperty('d.alpha', 0)
		setProperty('camGame.visible', false)
	end
	if curStep == 1248 then
		setProperty('redtoes2.visible', true)
		setProperty('fire.visible', true)
		setProperty('fire2.visible', true)
		setProperty('fire4.visible', true)
		setProperty('wave.visible', true)
		setProperty('wave2.visible', true)
		triggerEvent('Camera Follow Pos', 1250, 730)
		setProperty('camGame.visible', true)
		setProperty('boyfriend.x', 840)
		setProperty('boyfriend.y', 1800)
		setProperty('boyfriend.alpha', 1)
		setProperty('boyfriend.visible', true)
		setProperty('dad.x', 720)
		setProperty('dad.y', 1600)
		doTweenY('dadup', 'dad', 400, 0.3, 'cubeInOut')
		setProperty('dad.alpha', 1)
		setProperty('dad.visible', true)
		setProperty('cameraSpeed', 100)
	end
	if curStep == 1249 then
		setProperty('cameraSpeed', 1)
	end
	if curStep == 1308 then
		doTweenY('daddown', 'dad', 1600, 1, 'cubeInOut')
		doTweenY('bfup', 'boyfriend', 420, 1, 'cubeInOut')
	end
	if curStep == 1372 then
		doTweenY('bfdown', 'boyfriend', 1800, 1, 'cubeInOut')
		doTweenY('dadup', 'dad', 400, 1, 'cubeInOut')
	end
	if curStep == 1388 then
		setProperty('face2.alpha', 1)
		setProperty('face2.x', 900)
		setProperty('face2.y', 750)
		doTweenY('tadvdas', 'face2', 300, 0.4, 'circOut')
	end
	if curStep == 1392 then
		setProperty('face2.x', 50)
		setProperty('face2.y', -300)
		doTweenY('aasfdd', 'face2', 100, 0.4, 'circOut')
	end
	if curStep == 1408 then
		setProperty('face2.x', 1300)
		setProperty('face2.y', 220)
		doTweenAngle('facespin', 'face2', 1440, 1, 'linear')
		doTweenX('faceovertotheleftlmao', 'face2', -300, 1)
	end
	if curStep == 1420 then
		setProperty('face2.x', 900)
		setProperty('face2.y', 750)
		setProperty('face2.angle', 180)
		doTweenAngle('facesas2', 'face2', 0, 0.4, 'sineOut')
		doTweenY('tadvdas', 'face2', 300, 0.4, 'circOut')
	end
	if curStep == 1424 then
		setProperty('face2.x', 50)
		setProperty('face2.y', -300)
		setProperty('face2.angle', 180)
		doTweenAngle('facesass2', 'face2', 0, 0.4, 'sineOut')
		doTweenY('aasfdd', 'face2', 100, 0.4, 'circOut')
	end
	if curStep == 1436 then
		doTweenY('daddown', 'dad', 1600, 1, 'cubeInOut')
		doTweenY('bfup', 'boyfriend', 370, 1, 'cubeInOut')
	end
	if curStep == 1504 then
		triggerEvent('Camera Follow Pos', nil, nil)
		setProperty('fire.visible', false)
		setProperty('fire2.visible', false)
		setProperty('fire4.visible', false)
		setProperty('camGame.visible', false)
		setProperty('wave.visible', false)
		setProperty('bg.visible', true)
		loadGraphic('bg', 'redtoes')
		setProperty('cameraSpeed', 100)
	end
	if curStep == 1520 then
		setProperty('camGame.scroll.y', 600)
		setProperty('camGame.visible', true)
		setProperty('cameraSpeed', 1)
	end
	if curStep == 1632 then
		doTweenAlpha('whiteinlmao', 'd', 1, 2.5, 'cubeInOut')
	end
	if curStep == 1648 then
		doTweenY('sigma', 'guitar', 100, 2, 'cubeInOut')
		doTweenAngle('jhjdhhhh', 'guitar', 380, 2.3, 'cubeInOut')
	end
	if curStep == 1664 then
		doTweenAngle('jhjdhhhh', 'guitar', 0, 2, 'cubeInOut')
	end
	if curStep == 1680 then
		setProperty('d.alpha', 0)
		setProperty('guitar.visible', false)
		setProperty('bg.visible', false)
		setProperty('tiles.visible', true)
	end
	if curStep == 1744 then
		setProperty('camGame.alpha', 0)
		setProperty('redtoes2.visible', false)
		setProperty('wave.visible', false)
		setProperty('wave2.visible', false)
		setProperty('tiles.visible', false)
		setProperty('static.visible', true)
		setProperty('static.alpha', 0.1)
	end
	if curStep == 1792 then
		setProperty('dad.alpha', 0)
		triggerEvent('Camera Follow Pos', nil, nil)
		doTweenAlpha('camgameback', 'camGame', 1, 2, 'cubeInOut')
		setProperty('bg.alpha', 0)
		setProperty('dad.visible', false)
	end
	if curStep == 1904 then
		cameraFlash('game', 'black', 2)
		setProperty('isCameraOnForcedPos', true)
	end
	if curStep == 1968 then
	end
	if curStep == 2016 then
		setProperty('dad.x', 700)
		setProperty('dad.y', -1025)
		doTweenAlpha('dadhellofucker', 'dad', 1, 2)
		doTweenAlpha('evilin', 'evil', 1, 2)
	end
	if curStep == 2032 then
		setProperty('isCameraOnForcedPos', false)
	end
	if curStep == 2150 then
		setProperty('guitar.visible', true)
		setProperty('guitar.y', 700)
		doTweenY('guiu8iuitui', 'guitar', 100, 0.5, 'cubeInOut')
	end
	if curStep == 2154 then
		doTweenAngle('lkahjsbhcf', 'guitar', 380, 0.5, 'circInOut')
	end
	if curStep == 2156 then
		doTweenY('tfasdrffc', 'guitar', 700, 0.5, 'cubeIn')
	end
	if curStep == 2160 then
		setProperty('bg.visible', true)
		removeLuaSprite('evil', true)
		setProperty('bg.alpha', 1)
		setProperty('cameraSpeed', 100)
		setProperty('dad.alpha', 1)
		setProperty('dad.visible', true)
	end
	if curStep == 2161 then
		setProperty('cameraSpeed', 1)
	end
	if curStep == 2208 then
		doTweenAlpha('skiiiiibidi', 'd', 1, 3)
		setObjectCamera('d', 'hud')
		doTweenY('ajjdd', 'toetality2', 75, 4, 'cubeInOut')
	end
	if curStep == 2250 then
		doTweenY('jdjhdcxAS', 'toetality2', getProperty('toetality2.y') - 1000, 3, 'cubeInOut')
	end
	if curStep == 2252 then
		doTweenColor('asdjjffv', 'd', '000000', 1, 'cubeInOut')
	end
	if curStep == 2288 then
		removeLuaSprite('d', true)
		removeLuaSprite('evil', true)
		setProperty('dad.alpha', 1)
		setProperty('dad.visible', true)
		setProperty('fire.visible', true)
		setProperty('fire2.visible', true)
		setProperty('fire4.visible', true)
		setProperty('bg.visible', false)
		setProperty('wave.visible', true)
		setProperty('wave2.visible', true)
		triggerEvent('Camera Follow Pos', 1250, 730)
		setProperty('boyfriend.x', 830)
		setProperty('boyfriend.y', 1800)
		setProperty('dad.x', 500)
		setProperty('dad.y', 1600)
		doTweenY('dadup', 'dad', 450, 1, 'cubeInOut')
	end
	if curStep == 2348 then
		doTweenY('daddown', 'dad', 1600, 1, 'cubeInOut')
		doTweenY('bfup', 'boyfriend', 500, 1, 'cubeInOut')
	end
	if curStep == 2412 then
		doTweenY('bfdown', 'boyfriend', 1800, 1, 'cubeInOut')
		doTweenY('dadup', 'dad', 450, 1, 'cubeInOut')
	end
	if curStep == 2428 then
		setProperty('face2.x', 900)
		setProperty('face2.y', 750)
		doTweenY('tadvdas', 'face2', 300, 0.4, 'circOut')
	end
	if curStep == 2432 then
		setProperty('face2.x', 50)
		setProperty('face2.y', -300)
		doTweenY('aasfdd', 'face2', 100, 0.4, 'circOut')
	end
	if curStep == 2448 then
		setProperty('face2.x', 1300)
		setProperty('face2.y', 220)
		doTweenAngle('facespin', 'face2', 1440, 1, 'linear')
		doTweenX('faceovertotheleftlmao', 'face2', -300, 1)
	end
	if curStep == 2460 then
		setProperty('face2.x', 900)
		setProperty('face2.y', 750)
		setProperty('face2.angle', 180)
		doTweenAngle('facesas2', 'face2', 0, 0.4, 'sineOut')
		doTweenY('tadvdas', 'face2', 300, 0.4, 'circOut')
	end
	if curStep == 2464 then
		setProperty('face2.x', 50)
		setProperty('face2.y', -300)
		setProperty('face2.angle', 180)
		doTweenAngle('facesass2', 'face2', 0, 0.4, 'sineOut')
		doTweenY('aasfdd', 'face2', 100, 0.4, 'circOut')
	end
	if curStep == 2476 then
		doTweenY('daddown', 'dad', 1600, 1, 'cubeInOut')
		doTweenY('bfup', 'boyfriend', 370, 1, 'cubeInOut')
	end
	if curStep == 2544 then
		setProperty('camGame.alpha', 0)
		setProperty('boyfriend.visible', false)
		setProperty('dad.visible', false)
		setProperty('fire.visible', false)
		setProperty('fire2.visible', false)
		setProperty('fire4.visible', false)
		for i=0,7 do
			setPropertyFromGroup('strumLineNotes', i, 'visible', false)
			setPropertyFromGroup('strumLineNotes', i, 'x', -300)--getPropertyFromGroup('strumLineNotes', i, 'x') + (i * 200))
			setPropertyFromGroup('strumLineNotes', i, 'y', -150)
		end
		setProperty('camHUD.alpha', 0)
	end
end

function onTweenCompleted(tag)
	if tag == 'fucker' then
		removeLuaSprite('fucker', true)
	end
	if tag == 'white' then
		setProperty('dad.visible', true)
		doTweenAlpha('fadeout', 'd', 0, 3.5, 'cubeInOut')
	end
	if tag == 'fuck' then
		doTweenX('asjhju', 'face.scale', 0.4, 1, 'cubeOut')
		doTweenY('backup', 'face', -600, 2, 'cubeInOut')
	end
	if tag == 'whitehere' then
		doTweenAlpha('byebye', 'd', 0, 1.4)
	end
	if tag == 'drakeleft' then
		setProperty('drake.x', 1810)
	end
	if tag == 'drake2left' then
		setProperty('drake2.x', 1810)
	end
	if tag == 'dadout' then
		setProperty('dad.x', 2500)
	end
	if tag == 'bfout' then
		setProperty('boyfriend.x', 2500)
	end
	if tag == 'ohio rizz' then
		doTweenX('kill', 'guitar.scale', 0.8, 1, 'cubeInOut')
		doTweenAngle('spinny', 'guitar', 380, 2, 'cubeInOut')
		doTweenX('leftohio', 'guitar', getProperty('guitar.x') - 300, 1, 'cubeInOut')
		doTweenY('upskibidi', 'guitar', getProperty('guitar.y') - 40, 2.5, 'cubeInOut')
	end
	if tag == 'kill' then
		doTweenX('fortnite', 'guitar.scale', 0.35, 1, 'cubeInOut')
	end
	if tag == 'fortnite' then
		doTweenX('shagster', 'guitar.scale', 0.8, 1, 'cubeInOut')
		doTweenAngle('spinny', 'guitar', 20, 2, 'cubeInOut')
		doTweenX('rightohio', 'guitar', getProperty('guitar.x') + 600, 2, 'cubeInOut')
		doTweenY('downskibidi', 'guitar', getProperty('guitar.y') + 130, 2.5, 'cubeInOut')
	end
	if tag == 'shagster' then
		doTweenX('minecraft', 'guitar.scale', 0.35, 1, 'cubeInOut')
	end
	if tag == 'minecraft' then
		doTweenX('xorigin', 'guitar', 530, 1.5, 'cubeInOut')
		doTweenY('yorigin', 'guitar', 130, 1.5, 'cubeInOut')
	end
	if tag == 'xorigin' then
		doTweenY('guitarout', 'guitar', 700, 0.8, 'cubeIn')
	end
	if tag == 'bacgkround' then
		setProperty('isCameraOnForcedPos', false)
	end
	if tag == 'ajjdd' then
		doTweenX('sadfgbv', 'toetality2.scale', 3, 4, 'cubeInOut')
		doTweenY('asjfhvfa', 'toetality2.scale', 3, 4, 'cubeInOut')
	end
	if tag == 'tadvdas' then
		doTweenY('kjnfja', 'face2', 750, 0.1, 'cubeInOut')
	end
	if tag == 'aasfdd' then
		doTweenY('srffcx', 'face2', -300, 0.3, 'cubeInOut')
	end
end

function onUpdate()
	if getProperty('drake.x') == 1810 then
		doTweenX('drakeleft', 'drake', -2900, 3)
	end
	if getProperty('drake2.x') == 1810 then
		doTweenX('drake2left', 'drake2', -2900, 3)
	end
end

function onBeatHit()

	playAnim('wave2', 'bop', true)

	playAnim('wave', 'idle',true)


	setProperty('toetality.scale.x', 0.45)
	setProperty('toetality.scale.y', 0.45)
	doTweenX('toetalitysmallx', 'toetality.scale', 0.4, crochet / 1100, 'circOut')
	doTweenY('toetalitysmally', 'toetality.scale', 0.4, crochet / 1100, 'circOut')
end