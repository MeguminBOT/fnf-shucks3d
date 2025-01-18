function onCreate()

-------------------------------
	--preloads
	setTextString("botplayTxt", " ")
	precacheImage('characters/dbtg');
	precacheImage('characters/dbtgblood');
	precacheImage('characters/dbtgblack');
	precacheImage('characters/dbtgdoor');
	precacheImage('characters/dbtgbreakdown');
	precacheImage('characters/dbtgvs');
	precacheImage('characters/dbtgfov');
	precacheImage('characters/marvin');
	precacheImage('characters/marvinbrave');
	precacheImage('characters/marvindoor');
	precacheImage('characters/marvinvs');
	precacheImage('characters/marvinbreakdown');
	precacheImage('characters/rose');
	precacheImage('characters/roseangry');
	precacheImage('characters/rosedead');
	precacheImage('shucksbg');
	precacheImage('shucksdoor');
	precacheImage('shucksvc');
	precacheImage('redbg');
	precacheImage('breakdown');
	precacheImage('rose');
	precacheImage('speed');
	precacheImage('redui');
	precacheImage('firegif');
	precacheImage('fire');
	precacheImage('logo');
	setProperty('camHUD.alpha',0)
-------------------------------

-------------------------------
--important stuff

makeLuaSprite('yourturn','yourturn', 0, 0);
setObjectCamera('yourturn', 'other')
addLuaSprite('yourturn', true);
setProperty('yourturn.alpha', 0);
scaleObject('yourturn', 0.6666666, 0.6666666);

makeLuaSprite('whiteui','whiteui', 0, 0);
setObjectCamera('whiteui', 'hud')
addLuaSprite('whiteui', true);
setProperty('whiteui.alpha', 0);

makeLuaSprite('redback','red', -1300, -1300);
setLuaSpriteScrollFactor('redback', 0, 0);
scaleObject('redback', 10, 10);
setObjectOrder('redback', 0)
addLuaSprite('redback', true);
setProperty('redback.visible', false);

makeLuaSprite('black','black', -800, -500);
setLuaSpriteScrollFactor('black', 0, 0);
scaleObject('black', 10, 10);
setObjectOrder('black', 10)
addLuaSprite('black', true);

makeLuaSprite('red','red', -800, -500);
setLuaSpriteScrollFactor('red', 0, 0);
scaleObject('red', 10, 10);
setObjectOrder('red', 10)
addLuaSprite('red', true);
setProperty('red.alpha', 0);

makeLuaSprite('whiteother','white', 0, 0);
setObjectCamera('whiteother', 'other')
addLuaSprite('whiteother', true);
setProperty('whiteother.alpha', 0);


makeLuaSprite('white','white', 0, 0);
setObjectCamera('white', 'hud')
addLuaSprite('white', true);
setProperty('white.alpha', 0);

makeLuaSprite('blood','blood', 0, 0);
setObjectCamera('blood', 'hud')
addLuaSprite('blood', true);
setProperty('blood.alpha', 0);

-------------------------------
--effects

makeAnimatedLuaSprite('speed', 'speed', 0, 0)
setObjectOrder('speed', 2)
scaleObject('speed', 1, 1)
addAnimationByPrefix('speed', 'anim', 'idle', 24, true)
playAnim('speed', 'anim', true)
setObjectCamera('speed', 'hud')
addLuaSprite('speed', true)

makeAnimatedLuaSprite('redui', 'redui', 0, 0)
setObjectOrder('redui', 2)
scaleObject('redui', 1, 1)
addAnimationByPrefix('redui', 'anim', 'idle', 24, true)
playAnim('redui', 'anim', true)
setObjectCamera('redui', 'hud')
addLuaSprite('redui', true)

makeLuaSprite('logo', 'logo', 0, 0)
setObjectOrder('logo', 25)
scaleObject('logo', 0.45, 0.45)
setObjectCamera('logo', 'hud')
screenCenter('logo')
setProperty('logo.y', 100)
addLuaSprite('logo', true)

makeLuaSprite('shucks', 'shucks', 0, 0)
setObjectOrder('shucks', 25)
scaleObject('shucks', 0.45, 0.45)
setObjectCamera('shucks', 'hud')
screenCenter('shucks')
addLuaSprite('shucks', true)

makeAnimatedLuaSprite('rose', 'rose', 0, 0)
setObjectOrder('rose', 2)
scaleObject('rose', 1, 1)
addAnimationByPrefix('rose', 'anim', 'idle', 24, true)
playAnim('rose', 'anim', true)
setObjectCamera('rose', 'hud')
addLuaSprite('rose', true)

makeAnimatedLuaSprite('rose', 'rose', 0, 0)
setObjectOrder('rose', 2)
scaleObject('rose', 1, 1)
addAnimationByPrefix('rose', 'anim', 'idle', 24, true)
playAnim('rose', 'anim', true)
setObjectCamera('rose', 'hud')
addLuaSprite('rose', true)

makeAnimatedLuaSprite('firegif', 'firegif', -600, -400)
setObjectOrder('firegif', 10)
scaleObject('firegif', 2.2, 2.2)
setScrollFactor('firegif', 0.5, 0.5)
addAnimationByPrefix('firegif', 'anim', 'idle', 24, true)
addLuaSprite('firegif', true)

makeAnimatedLuaSprite('fire3', 'fire3', -600, -400)
setObjectOrder('fire3', 2)
scaleObject('fire3', 2.2, 2.2)
setScrollFactor('fire3', 0.5, 0.5)
addAnimationByPrefix('fire3', 'anim', 'idle', 24, true)
addLuaSprite('fire3', true)

makeAnimatedLuaSprite('fire2', 'fire2', -600, -400)
setObjectOrder('fire2', 2)
scaleObject('fire2', 2.2, 2.2)
setScrollFactor('fire2', 0.5, 0.5)
addAnimationByPrefix('fire2', 'anim', 'idle', 24, true)
addLuaSprite('fire2', true)

setProperty('redui.alpha', 0);
setProperty('rose.alpha', 0);
setProperty('blood.alpha', 0);
setProperty('blood.alpha', 0);
setProperty('blood.alpha', 0);
setProperty('firegif.alpha', 0);
setProperty('fire2.alpha', 0);
setProperty('fire3.alpha', 0);
setProperty('logo.alpha', 0);
setProperty('shucks.alpha', 0);

-------------------------------

-------------------------------
--door
	setScrollFactor('boyfriendGroup', 1.5, 1.7)
	setProperty('gfGroup.visible', false)
	setObjectOrder('bfGroup', 6)
	setObjectOrder('dadGroup', 1)
	makeLuaSprite('whitebg', 'white', -221, -237)
	setObjectOrder('whitebg', 0)
	scaleObject('whitebg', 2.1, 2.1)
	makeLuaSprite('shucksdoor', 'shucksdoor', -704, -284)
	setObjectOrder('shucksdoor', 3)
	scaleObject('shucksdoor', 0.9, 0.9)
	makeLuaSprite('lightdoor', 'light', 583, -327)
	setObjectOrder('lightdoor', 6)
	scaleObject('lightdoor', 0.5, 0.5)
	makeLuaSprite('yellowlightdoor', 'yellowlight', 1066, -624)
	setObjectOrder('yellowlightdoor', 9)
	scaleObject('yellowlightdoor', 0.7, 0.7)
	setScrollFactor('yellowlightdoor', 2, 2)
	setProperty('yellowlightdoor.alpha', 0.8)
	setProperty('yellowlightdoor.flipX', true)
	makeLuaSprite('lightdoor2', 'light', -1426, 1233)
	setObjectOrder('lightdoor2', 9)
	scaleObject('lightdoor2', 1.2, 1.2)
	setScrollFactor('lightdoor2', 2, 2)
	setProperty('lightdoor2.alpha', 0.8)
	setProperty('lightdoor2.flipX', true)
	makeLuaSprite('lightdoor3', 'light', 1760, -921)
	setObjectOrder('lightdoor3', 9)
	scaleObject('lightdoor3', 1.2, 1.2)
	setScrollFactor('lightdoor3', 2, 2)
	setProperty('lightdoor3.alpha', 0.8)
	setProperty('lightdoor3.flipX', true)
	makeLuaSprite('chaindoor', 'chain', 530, -404)
	setObjectOrder('chaindoor', 9)
	scaleObject('chaindoor', 1.9, 1.9)
	setScrollFactor('chaindoor', 1.3, 1.3)
	setProperty('chaindoor.angle', 35)
	setProperty('chaindoor.flipX', true)
	makeLuaSprite('deadforedoor', 'deadfore', 1354, 1100)
	setObjectOrder('deadforedoor', 5)
	scaleObject('deadforedoor', 2.2, 2.2)
	setScrollFactor('deadforedoor', 1.4, 1.4)

	addLuaSprite('whitebg', true)
	addLuaSprite('shucksdoor', true)
	addLuaSprite('lightdoor', true)
	addLuaSprite('yellowlightdoor', true)
	addLuaSprite('lightdoor2', true)
	addLuaSprite('lightdoor3', true)
	addLuaSprite('chaindoor', true)
	addLuaSprite('deadforedoor', true)
-------------------------------

-------------------------------
	--mainroom
	makeLuaSprite('shucksbg', 'shucksbg', -793, -991)
	setObjectOrder('shucksbg', 0)
	scaleObject('shucksbg', 1.1, 1.1)
	makeLuaSprite('shucksbg2', 'shucksbg2', -793, -991)
	setObjectOrder('shucksbg2', 2)
	scaleObject('shucksbg2', 1.1, 1.1)
	makeLuaSprite('light', 'light', 988, -177)
	setObjectOrder('light', 3)
	scaleObject('light', 0.3, 0.3)
	makeLuaSprite('light2', 'light', -896, -659)
	setObjectOrder('light2', 3)
	scaleObject('light2', 0.7, 0.7)
	makeLuaSprite('chain', 'chain', 2276, -742)
	setObjectOrder('chain', 6)
	scaleObject('chain', 1.2, 1.2)
	setScrollFactor('chain', 1.2, 1.2)
	setProperty('chain.angle', 325)
	makeLuaSprite('chain2', 'chain', 852, -1326)
	setObjectOrder('chain2', 8)
	scaleObject('chain2', 1.7, 1.7)
	setScrollFactor('chain2', 1.5, 1.5)
	setProperty('chain2.angle', 260)
	makeLuaSprite('chain3', 'chain', 2905, 386)
	setObjectOrder('chain3', 7)
	scaleObject('chain3', 1.1, 1.1)
	setScrollFactor('chain3', 1.2, 1.2)
	setProperty('chain3.angle', 335)
	makeLuaSprite('hook', 'hook', -100, -300)
	setObjectOrder('hook', 12)
	scaleObject('hook', 1.1, 1.1)
	setScrollFactor('hook', 1.5, 1.5)
	makeLuaSprite('hook2', 'hook2', 3000, -168)
	setObjectOrder('hook2', 12)
	scaleObject('hook2', 1.6, 1.6)
	setScrollFactor('hook2', 2, 2)
	setProperty('hook2.angle', 355)
	makeLuaSprite('box', 'box', -433, 542)
	setObjectOrder('box', 7)
	scaleObject('box', 2.4, 2.4)
	setScrollFactor('box', 1.2, 1.2)
	setProperty('box.angle', 355)
	makeLuaSprite('deadfore', 'deadfore', 2261, 700)
	setObjectOrder('deadfore', 13)
	scaleObject('deadfore', 1.7, 1.7)
	setScrollFactor('deadfore', 1.5, 1.5)

	addLuaSprite('shucksbg', true)
	addLuaSprite('shucksbg2', true)
	addLuaSprite('light', true)
	addLuaSprite('light2', true)
	addLuaSprite('chain', true)
	addLuaSprite('chain2', true)
	addLuaSprite('chain3', true)
	addLuaSprite('hook', true)
	addLuaSprite('hook2', true)
	addLuaSprite('box', true)
	addLuaSprite('deadfore', true)

	setProperty('shucksbg.visible', false)
	setProperty('shucksbg2.visible', false)
	setProperty('light.visible', false)
	setProperty('light2.visible', false)
	setProperty('chain.visible', false)
	setProperty('chain2.visible', false)
	setProperty('chain3.visible', false)
	setProperty('hook.visible', false)
	setProperty('hook2.visible', false)
	setProperty('box.visible', false)
	setProperty('deadfore.visible', false)
-------------------------------

-------------------------------
--vs
	makeLuaSprite('shucksvs', 'shucksvs', -29, -10)
	setObjectOrder('shucksvs', 1)
	scaleObject('shucksvs', 0.7, 0.7)
	setScrollFactor('shucksvs', 0, 0)
	makeAnimatedLuaSprite('lightning', 'lightning', 551, -185)
	setObjectOrder('lightning', 4)
	scaleObject('lightning', 0.8, 0.8)
	setScrollFactor('lightning', 0, 0)
	addAnimationByPrefix('lightning', 'anim', 'idle', 24, true)
	playAnim('lightning', 'anim', true)
	makeAnimatedLuaSprite('firevs', 'fire', -41, -29)
	setObjectOrder('firevs', 2)
	scaleObject('firevs', 1.1, 1.1)
	setScrollFactor('firevs', 0, 0)
	addAnimationByPrefix('firevs', 'anim', 'idle', 24, true)
	playAnim('firevs', 'anim', true)
	makeAnimatedLuaSprite('firevs2', 'fire2', -104, -24)
	setObjectOrder('firevs2', 3)
	scaleObject('firevs2', 1.1, 1.1)
	setScrollFactor('firevs2', 0, 0)
	addAnimationByPrefix('firevs2', 'anim', 'idle', 24, true)
	playAnim('firevs2', 'anim', true)

	setProperty('shucksvs.visible', false)
	setProperty('lightning.visible', false)
	setProperty('firevs.visible', false)
	setProperty('firevs2.visible', false)

	addLuaSprite('shucksvs', true)
	addLuaSprite('lightning', true)
	addLuaSprite('firevs', true)
	addLuaSprite('firevs2', true)
-------------------------------

-------------------------------
--fov

makeAnimatedLuaSprite('redbg', 'redbg', 79, -157)
setObjectOrder('redbg', 0)
scaleObject('redbg', 1.3, 1.3)
addAnimationByPrefix('redbg', 'anim', 'idle', 24, true)
playAnim('redbg', 'anim', true)
addLuaSprite('redbg', true)

setProperty('redbg.visible', false)
setProperty('speed.visible', false)

-------------------------------
--breakdown
makeAnimatedLuaSprite('breakdown', 'breakdown', 0, 0)
setObjectOrder('breakdown', 0)
scaleObject('breakdown', 2.9, 2.9)
addAnimationByPrefix('breakdown', 'anim', 'idle', 24, true)
playAnim('breakdown', 'anim', true)
screenCenter('breakdown')
setProperty('breakdown.x', -600)
setProperty('breakdown.y', -600)
addLuaSprite('breakdown', true)
setProperty('breakdown.visible', false)

-------------------------------

-------------------------------

-------------------------------



end

function onStepHit()
	if curStep == 512 then --512
		setObjectOrder('shucksdoor', 0)
		removeLuaSprite('whitebg', true)
		removeLuaSprite('shucksdoor', true)

		makeLuaSprite('shucksdoorclose', 'shucksdoorclose', -704, -284)
		setObjectOrder('shucksdoorclose', 3)
		scaleObject('shucksdoorclose', 0.9, 0.9)
		addLuaSprite('shucksdoorclose', true)
	end
	if curStep == 640 then --640
		setScrollFactor('boyfriendGroup', 1, 1)
		setProperty('gfGroup.visible', true)
		
		removeLuaSprite('shucksdoorclose', true)
		removeLuaSprite('lightdoor', true)
		removeLuaSprite('yellowlightdoor', true)
		removeLuaSprite('lightdoor2', true)
		removeLuaSprite('lightdoor3', true)
		removeLuaSprite('chaindoor', true)
		removeLuaSprite('deadforedoor', true)

		setProperty('gfGroup.visible', true)
		setObjectOrder('bfGroup', 5)
		setObjectOrder('gfGroup', 5)
		setObjectOrder('dadGroup', 9)

		setProperty('shucksbg.visible', true)
		setProperty('shucksbg2.visible', true)
		setProperty('light.visible', true)
		setProperty('light2.visible', true)
		setProperty('chain.visible', true)
		setProperty('chain2.visible', true)
		setProperty('chain3.visible', true)
		setProperty('hook.visible', true)
		setProperty('hook2.visible', true)
		setProperty('box.visible', true)
		setProperty('deadfore.visible', true)
	end
	if curStep == 1152 then
		setProperty('gfGroup.visible', false)

		setProperty('shucksbg.visible', false)
		setProperty('shucksbg2.visible', false)
		setProperty('light.visible', false)
		setProperty('light2.visible', false)
		setProperty('chain.visible', false)
		setProperty('chain2.visible', false)
		setProperty('chain3.visible', false)
		setProperty('hook.visible', false)
		setProperty('hook2.visible', false)
		setProperty('box.visible', false)
		setProperty('deadfore.visible', false)

		setProperty('shucksvs.visible', true)
		setProperty('lightning.visible', true)
		setProperty('firevs.visible', true)
		setProperty('firevs2.visible', true)

	end
	if curStep == 1344 then
		setProperty('shucksbg.visible', true)
		setProperty('shucksbg2.visible', true)
		setProperty('light.visible', true)
		setProperty('light2.visible', true)
		setProperty('chain.visible', true)
		setProperty('chain2.visible', true)
		setProperty('chain3.visible', true)
		setProperty('hook.visible', true)
		setProperty('hook2.visible', true)
		setProperty('box.visible', true)
		setProperty('deadfore.visible', true)

		setProperty('gfGroup.visible', true)
		removeLuaSprite('firevs', true)
		removeLuaSprite('firevs2', true)
		removeLuaSprite('shucksvs', true)
		removeLuaSprite('lightning', true)
	end
	if curStep == 1408 then
		setProperty('shucksbg.visible', false)
		setProperty('shucksbg2.visible', false)
		setProperty('light.visible', false)
		setProperty('light2.visible', false)
		setProperty('chain.visible', false)
		setProperty('chain2.visible', false)
		setProperty('chain3.visible', false)
		setProperty('hook.visible', false)
		setProperty('hook2.visible', false)
		setProperty('box.visible', false)
		setProperty('deadfore.visible', false)
		setProperty('dadGroup.visible', false)
		setProperty('bfGroup.visible', false)
		setProperty('gfGroup.visible', false)
	end
	if curStep == 1472 then
		setProperty('shucksbg.visible', true)
		setProperty('shucksbg2.visible', true)
		setProperty('light.visible', true)
		setProperty('light2.visible', true)
		setProperty('chain.visible', true)
		setProperty('chain2.visible', true)
		setProperty('chain3.visible', true)
		setProperty('hook.visible', true)
		setProperty('hook2.visible', true)
		setProperty('box.visible', true)
		setProperty('deadfore.visible', true)
		setProperty('dadGroup.visible', true)
		setProperty('bfGroup.visible', true)
		setProperty('gfGroup.visible', true)
	end
	if curStep == 1984 then --1984
		doTweenColor('Gray1', 'shucksbg', '101010', 20, 'cubeout')
		doTweenColor('Gray2', 'shucksbg2', '101010', 20, 'cubeout')
		doTweenColor('Gray3', 'chain', '101010', 20, 'cubeout')
		doTweenColor('Gray4', 'chain2', '101010', 20, 'cubeout')
		doTweenColor('Gray0', 'chain3', '101010', 20, 'cubeout')
		doTweenColor('Gray5', 'hook', '101010', 20, 'cubeout')
		doTweenColor('Gray6', 'hook2', '101010', 20, 'cubeout')
		doTweenColor('Gray7', 'box', '101010', 20, 'cubeout')
		doTweenColor('Gray8', 'deadfore', '101010', 20, 'cubeout')
		doTweenColor('Gray9', 'dad', '101010', 20, 'cubeout')
		doTweenColor('Gray10', 'boyfriend', '757575', 20, 'cubeout')
	end
	if curStep == 2528 then
		doTweenColor('White1', 'shucksbg', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White2', 'shucksbg2', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White3', 'chain', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White4', 'chain2', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White0', 'chain3', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White5', 'hook', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White6', 'hook2', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White7', 'box', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White8', 'deadfore', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White9', 'dad', 'FFFFFF', 1, 'cubeout')
		doTweenColor('White10', 'boyfriend', 'FFFFFF', 1, 'cubeout')
		removeLuaSprite('rose', true)
	end
	if curStep == 2560 then
		setProperty('shucksbg.visible', false)
		setProperty('shucksbg2.visible', false)
		setProperty('light.visible', false)
		setProperty('light2.visible', false)
		setProperty('chain.visible', false)
		setProperty('chain2.visible', false)
		setProperty('chain3.visible', false)
		setProperty('hook.visible', false)
		setProperty('hook2.visible', false)
		setProperty('box.visible', false)
		setProperty('deadfore.visible', false)
	end
	if curStep == 2944 then
		setProperty('redbg.visible', true)
		setProperty('speed.visible', true)
		setProperty('bfGroup.visible', false)
		setProperty('gfGroup.visible', false)
	end
	if curStep == 3168 then
		removeLuaSprite('redbg', true)
		removeLuaSprite('speed', true)
		setProperty('bfGroup.visible', false)
		setProperty('gfGroup.visible', false)
		setProperty('dad.visible', false)
	end
	if curStep == 3456 then
		setProperty('bfGroup.visible', true)
		setProperty('gfGroup.visible', true)
		setProperty('dad.visible', true)
		setProperty('shucksbg.visible', true)
		setProperty('shucksbg2.visible', true)
		setProperty('light.visible', true)
		setProperty('light2.visible', true)
		setProperty('chain.visible', true)
		setProperty('chain2.visible', true)
		setProperty('chain3.visible', true)
		setProperty('hook.visible', true)
		setProperty('hook2.visible', true)
		setProperty('box.visible', true)
		setProperty('deadfore.visible', true)
		setObjectOrder('dadGroup', 7)
	doTweenAlpha('fire1', 'firegif', 0.2, 10, 'cubeout')
	doTweenAlpha('fire2', 'fire2', 0.4, 10, 'cubeout')
	doTweenAlpha('fire3', 'fire3', 0.5, 10, 'cubeout')
	end
	if curStep == 3712 then
		removeLuaSprite('shucksbg', true)
		removeLuaSprite('shucksbg2', true)
		removeLuaSprite('light', true)
		removeLuaSprite('light2', true)
		removeLuaSprite('chain', true)
		removeLuaSprite('chain2', true)
		removeLuaSprite('chain3', true)
		removeLuaSprite('hook', true)
		removeLuaSprite('hook2', true)
		removeLuaSprite('box', true)
		removeLuaSprite('deadfore', true)

		setObjectOrder('dadGroup', 27)
	end

	if curStep == 3968 then
		doTweenAlpha('fire2', 'fire2', 0.4, 10, 'cubeout')
		doTweenAlpha('fire3', 'fire3', 0.5, 10, 'cubeout')
		setProperty('gfGroup.visible', false)
		setProperty('breakdown.visible', true)
	end
end