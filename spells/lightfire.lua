-- This is the light fire spell file

lightfire = {mana = 250, name = "Light Fire", description = "Light fire damage on the oponent.", 
  spell = function()
    scl()
    your_mana = your_mana - 250
    print("You start to say words of wizardry..."
      -- Is that even right? wizardry? Lemme check...
      -- Yep. it's correct. Back to the game.
      .. " When a small fire creature comes from the ground and spills fire on the enemy.")
    delay(5)
    damage_multiplier = math.random(1, 120)
    damage_given = damage_multiplier * your_damage_overall
    enemy_hp = enemy_hp - damage_given
    print("You gave him " .. damage_given .. "HP of damage. Now he has " .. enemy_hp .. "HP.")
    delay(5)
  --Duh
    enemyTurn()
    -- You can find the enemyTurn() function on the battlecommands file.
  end
}