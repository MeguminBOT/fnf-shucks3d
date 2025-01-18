function opponentNoteHit(id, direction, noteType, isSustainNote)
	local curHealth = getProperty('health')
	local healthThreshold = 0.5
	local healthDecrease = 0.007
	
	if gfSection and not mustHitSection or mustHitSection and noteType == 'GF Sing' then
		return;
	end

	if curHealth > healthThreshold then
		setProperty('health', curHealth - healthDecrease)
	end
end