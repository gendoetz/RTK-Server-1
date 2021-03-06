singe_rogue = {
	cast = function(player, target)
		local spellName = "Singe"
		if not player:canCast(1, 1, 0) then
			return
		end
		local damage = 25 + math.floor(player.level / 2) + math.floor((player.will + 3) / 4)
		local worked = global_zap.cast(player, target, damage, 20, 12)
		if worked ~= 0 then
			player:sendMinitext("You cast " .. spellName .. ".")
		end
		if worked == 2 then
			target:sendMinitext(player.name .. " cast " .. spellName .. " on you.")
		end
	end,

	requirements = function(player)
		local level = 18
		local items = {Item("acorn").id, Item("topaz").id, 0}
		local itemAmounts = {30, 1, 200}
		local description = "A moderate elemental attack."
		return level, items, itemAmounts, description
	end
}

embrace_of_the_void_rogue = {
	cast = function(player, target)
		local spellName = "Embrace of the Void"
		if not player:canCast(1, 1, 0) then
			return
		end
		local damage = 25 + math.floor(player.level / 2) + math.floor((player.will + 3) / 4)
		local worked = global_zap.cast(player, target, damage, 20, 251)
		if worked ~= 0 then
			player:sendMinitext("You cast " .. spellName .. ".")
		end
		if worked == 2 then
			target:sendMinitext(player.name .. " cast " .. spellName .. " on you.")
		end
	end,

	requirements = function(player)
		local level = 18
		local items = {Item("acorn").id, Item("topaz").id, 0}
		local itemAmounts = {30, 1, 200}
		local description = "A moderate elemental attack."
		return level, items, itemAmounts, description
	end
}

lightning_rogue = {
	cast = function(player, target)
		local spellName = "Lightning"
		if not player:canCast(1, 1, 0) then
			return
		end
		local damage = 25 + math.floor(player.level / 2) + math.floor((player.will + 3) / 4)
		local worked = global_zap.cast(player, target, damage, 20, 252)
		if worked ~= 0 then
			player:sendMinitext("You cast " .. spellName .. ".")
		end
		if worked == 2 then
			target:sendMinitext(player.name .. " cast " .. spellName .. " on you.")
		end
	end,

	requirements = function(player)
		local level = 18
		local items = {Item("acorn").id, Item("topaz").id, 0}
		local itemAmounts = {30, 1, 200}
		local description = "A moderate elemental attack."
		return level, items, itemAmounts, description
	end
}

natures_storm_rogue = {
	cast = function(player, target)
		local spellName = "Nature's Storm"
		if not player:canCast(1, 1, 0) then
			return
		end
		local damage = 25 + math.floor(player.level / 2) + math.floor((player.will + 3) / 4)
		local worked = global_zap.cast(player, target, damage, 20, 253)
		if worked ~= 0 then
			player:sendMinitext("You cast " .. spellName .. ".")
		end
		if worked == 2 then
			target:sendMinitext(player.name .. " cast " .. spellName .. " on you.")
		end
	end,

	requirements = function(player)
		local level = 18
		local items = {Item("acorn").id, Item("topaz").id, 0}
		local itemAmounts = {30, 1, 200}
		local description = "A moderate elemental attack."
		return level, items, itemAmounts, description
	end
}
