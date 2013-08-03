function endPuzzle()
	local chance = 8;
	for x = 909, 970 do
		for z = 956, 1100 do
			if math.random(1, 100) < chance then
				engine.effects.firework('puzzle', x, 64, z, 'BALL_LARGE', 14, 12, true, true, math.random(0,4));
			end
		end
	end
	local loc = Location:new("puzzle", 990, 86, 991);
	local player = loc:getClosestPlayer();
	player:sendEvent("achievement.myBrainHurts");
end

registerHook("INTERACT", "endPuzzle", 70, "puzzle", 990, 86, 991);