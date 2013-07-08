--[[ Some major commands for the smooth working of the game. ]]--
version = "0.0.2 Alpha Pre-release"
-- Just to make sure that the random nimbers will be, in fact, random.
print (math.randomseed(os.time()))
print (math.random(100))
print (math.random(1000))
print (math.random(10000))
function delay(t)
	f = os.time() + t
	while os.time() < f do end
end

function enemy_choose()
  --enemy_number = math.random(1, 4)
  enemy_number = 1
  if enemy_number == 1 then
    require "monsters.fire"
    return "fire"
  elseif enemy_number == 2 then
    require "monsters.water"
    return "water"
  elseif enemy_number == 3 then
    require "monsters.human"
    -- Althou' a human is not a monster.
    return "human"
  elseif enemy_number == 4 then
    require "monsters.wood"
    return "wood"
  end
end