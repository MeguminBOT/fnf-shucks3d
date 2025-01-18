local maxMovePx = {3, 3}
local updateEvery = 0.01

local updateTime = 0
local shakePlayer = false
local shakeEnemy = true

puede = true

function onUpdatePost(e)
if puede == true then
    updateTime = updateTime + e

    if updateTime > updateEvery then
        updateTime = 0
        for i=0, 3 do
            if shakeEnemy then
                resetStrumPos(i, false)
                shake(i, false)
            end
            if shakePlayer then
                resetStrumPos(i, true)
                shake(i, true)
            end
        end
    end
end
end
function resetStrumPos(strum, player)
local ogV = {_G['defaultOpponentStrumX'..strum], _G['defaultOpponentStrumY'..strum]}
if player then
ogV = {_G['defaultPlayerStrumX'..strum], _G['defaultPlayerStrumY'..strum]}
end
local group = 'opponentStrums'
if player then
group = 'playerStrums'
end
setPropertyFromGroup(group, strum, 'x', ogV[1])
setPropertyFromGroup(group, strum, 'y', ogV[2])
end
function shake(strum, player)
local ogV = {_G['defaultOpponentStrumX'..strum], _G['defaultOpponentStrumY'..strum]}
if player then
ogV = {_G['defaultPlayerStrumX'..strum], _G['defaultPlayerStrumY'..strum]}
end
local group = 'opponentStrums'
if player then
group = 'playerStrums'
end
setPropertyFromGroup(group, strum, 'x', ogV[1] + getRandomInt(-maxMovePx[1], maxMovePx[1]))
setPropertyFromGroup(group, strum, 'y', ogV[2] + getRandomInt(-maxMovePx[2], maxMovePx[2]))
end