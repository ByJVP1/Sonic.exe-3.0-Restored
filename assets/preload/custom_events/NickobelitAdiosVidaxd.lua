
function opponentNoteHit(tag)
	health = getProperty('health')
	if getProperty('health') > 0.3 then
	setProperty('health', health- 0.015);
	end
end