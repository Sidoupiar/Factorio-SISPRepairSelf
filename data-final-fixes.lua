-- ------------------------------------------------------------------------------------------------
-- -------- 调整玩家能力 --------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------

for name , character in pairs( SIGen.GetList( SITypes.entity.character ) ) do
	if character and character.flags then
		local flags = {}
		for i , flag in pairs( character.flags ) do
			if flag ~= SIFlags.entityFlags.notRepairable then table.insert( flags , flag ) end
		end
		character.flags = flags
	end
end