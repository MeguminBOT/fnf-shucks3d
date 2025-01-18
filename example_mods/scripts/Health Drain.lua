function opponentNoteHit()
	local curHealth = getProperty('health')
	local healthThreshold = 0.5
	local healthDecrease = 0.007

	if curHealth > healthThreshold then
		setProperty('health', curHealth - healthDecrease)
	end
end