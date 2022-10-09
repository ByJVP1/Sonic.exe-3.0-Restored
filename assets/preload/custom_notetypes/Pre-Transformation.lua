local penis
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--???
	end
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function opponentNoteHit(id, noteData, noteType, isSustainNote)--Nickobelit lo hizo :0
if noteType == 'Pre-Transformation' then
		if noteData == 0 then
        if getProperty('health') > 0.4 then
			setProperty('health',getProperty('health') - 0.07)
		end
end
		if noteData == 1 then
if getProperty('health') > 0.4 then
			setProperty('health',getProperty('health') - 0.07)
		end
end
		if noteData == 2 then
if getProperty('health') > 0.4 then
			setProperty('health',getProperty('health') - 0.07)
		end
end
		if noteData == 3 then
if getProperty('health') > 0.4 then
			setProperty('health',getProperty('health') - 0.07)
		end
	end
end
end