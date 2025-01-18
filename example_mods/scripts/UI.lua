function onCreatePost()
    local healthBarPosX = getProperty('healthBar.x')
    local healthBarPosY = getProperty('healthBar.y')

    makeLuaSprite('healthBarOverlay', 'heathbar', 0, 0)
    scaleObject('healthBarOverlay', 0.6, 0.6)
    setProperty('healthBarOverlay.x', healthBarPosX - 28)
    setProperty('healthBarOverlay.y', healthBarPosY - 68)
    addLuaSprite('healthBarOverlay', false)
    addToGroup('uiGroup', 'healthBarOverlay')

    doTweenColor('Tweenname', 'scoreTxt', 'FF0000', 1, 'cubein')
end

function onSongStart()
    healthBarOverlay = getObjectOrder('uiGroup', 'healthBarOverlay')
    setObjectOrder('iconP1', healthBarOverlay + 97, 'uiGroup')
    setObjectOrder('iconP2', healthBarOverlay + 98, 'uiGroup')
    setObjectOrder('scoreTxt', healthBarOverlay + 98, 'uiGroup')
end

function onUpdatePost()
	setProperty('iconP1.x', screenWidth - 260)
	setProperty('iconP2.x', 120)
end   