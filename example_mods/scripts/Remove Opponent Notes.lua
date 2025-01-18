local moveOpponentStrums = false
local opponentStrumAlpha = 0.1

-- Hide opponent notes.
local function hideOpponentNotes()
	for i = 0,3 do
		if moveOpponentStrums then
			setPropertyFromGroup('strumLineNotes', i, 'x', -9999)
		end
		setPropertyFromGroup('strumLineNotes', i, 'alpha', opponentStrumAlpha)
	end
end

function onUpdatePost(elapsed)
	hideOpponentNotes()
end