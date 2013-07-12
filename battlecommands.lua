function newturn()
  scl()
  turn = turn + 1
  your_hp = your_hp + 50
  enemy_hp = enemy_hp + 50
  your_mana = your_mana + 100
  if screwd == true then
    print("You can't do anything now, you are terribly wounded by the attack of the enemy")
    delay(5)
  end
  if your_mana > 1000 then
    your_mana = 1000
  end
  if your_hp <= 0 then
    youlose()
  elseif enemy_hp <= 0 then
    youwin()
  end
  try_counter = true
  battle_menu()
end

function damage_onenemy()
  if enemy_type == "human" then
    damage_multiplier = math.random(1, 100)
    damage = damage_multiplier * your_damage_overall
    enemy_hp = enemy_hp - damage
  elseif enemy_type == "wood" then
    damage_multiplier = math.random(1, 20)
    damage = damage_multiplier * your_damage_overall
    enemy_hp = enemy_hp - damage
    stuck = math.random(1, 100)
    if stuck >= 80 then
      sword_stuck = true
    end
  end
end

function youlose()
  scl()
  print("You fall and faint.")
  print("You are dead.")
  print("There's nothing you can do about it.")
  print("It's over.")
  print("The habbitants of a near village find you corpse rotting")
  print("Being eaten by crows.")
  print("They leave you there.")
  print("There's nothing you can do about it.")
  print("You are dead.")
  print("You are dead.")
  print("-------------------------------------------------------------")
  print("GAME OVER")
  print("	Knights Adventure " .. version)
  print("Press enter to go to the main menu.")
  -- Sad history ._.
  continue = io.read()
  opening()
end

function youwin()
  scl()
  print("The enemy is dead, HOORAAAAY!")
  print("Unfortunatelly, me, Kamalcranio, didn't make the final version, with")
  print("levels and other stuff, so, i think you won... Yeah!")
  print("-----------------------------------------------------------------------")
  print("YOU WON!")
  print("	Knights Adventure " .. version)
  print("Press enter to go to the main menu")
  continue = io.read()
  opening()
end

function enemyTurn()
  scl()
  attack = math.random(1, 2)
  if attack == 1 then
    monster.attack1()
  else
    monster.attack2()
  end
end