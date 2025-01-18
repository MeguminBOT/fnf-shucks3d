local shakeNotes = true

function onUpdatePost()
    local currentBeat = (getSongPosition()/5000)
    if shakeNotes then
        for i=0,3 do
            setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultOpponentStrumX'..i] + getRandomInt(-4, 4) + math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('opponentStrums', i, 'y', _G['defaultOpponentStrumY'..i] + getRandomInt(-4, 4) + math.sin((currentBeat + i*0.25) * math.pi))
        end
    end
end  

local noteColors = {'purple0', 'blue0', 'green0', 'red0'}
local noteCounter = 0

function opponentNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote and curStep >= 3968 then
        noteCounter = noteCounter + 1
        local spriteName = 'noteSprite' .. noteCounter
        makeAnimatedLuaSprite(spriteName, 'notes', getRandomInt(0, 30) * 50, 200)
        addAnimationByPrefix(spriteName, 'noteAnimation', noteColors[direction + 1])
        addLuaSprite(spriteName)
        doTweenY('moveNote' .. noteCounter, spriteName, defaultOpponentY + 300, 2, 'circOut')
        doTweenAlpha('fadeNote' .. noteCounter, spriteName, 0, 2, 'circOut')
    end
end
