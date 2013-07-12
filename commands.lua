--[[ Some major commands for the smooth working of the game. ]]--
colors = require "ansicolors"
version = colors.onblue .. colors.white .. "0.1 Alpha Pre-release" .. colors.reset
require "spells.list"
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

function showStats()
    print("Enemy type: " .. enemy_type .. " - Turn: " .. turn)
    print("Your HP: " .. your_hp .. " - Your mana: " .. your_mana)
    print("Enemy HP: " .. enemy_hp)
end
