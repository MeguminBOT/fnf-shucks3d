--Script Thanks For Perrobot64

local bg = 'loadingBG' -- don't touch this

local allowCountdown = false

function onStartCountdown() -- No countdown yet
    if not allowCountdown then
	    return Function_Stop
	end

	if allowCountdown then
	    return Function_Continue
	end
end

function onCreatePost() -- sprite loading
	makeLuaSprite('loadingBG', 'loadingBG', 0, 0)
	scaleObject('loadingBG', 0.666666, 0.666666)
	runTimer('fadeTimer', 6.0, 1)

	addLuaSprite('loadingBG', true)
	setObjectCamera('loadingBG', 'camOther')
end

function onTimerCompleted(tag) -- bye bye loading screen
    if tag == 'fadeTimer' then
	    doTweenAlpha('delete', 'loadingBG', 0, 0.5, 'backIn')
		allowCountdown = true
		startCountdown()
		
	end
end

function onTweenCompleted(tag) -- everything goes bye bye
    if tag == 'delete' then
	    removeLuaSprite('loadingBG', true)
		
	end
end