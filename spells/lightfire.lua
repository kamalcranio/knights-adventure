-- This is the light fire spell file

lightfire = {mana = 250, name = "Light Fire", description = "Light fire damage on the oponent.", 
  spell = function()
    scl()
    print("You start to say words of wizardry..."
      -- Is that even right? wizardry? Lemme check...
      -- Yep. it's correct. Back to the game.
      .. " When a small fire creature comes from the ground and spills fire on the enemy.")
    delay(3)
    damage_multiplier = math.random(1, 120)
    damage_given = damage_multiplier * your_damage_overall
    enemy_hp = enemy_hp - damage_given
    print("You gave him " .. damage_given .. "HP of damage. Now he has " .. enemy_hp .. "HP.")
  --Duh
  end
}