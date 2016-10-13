-- This is the file for the FIRE MONSTER
monster = {
  weakness = "water", 
  color = colors.yellow, 
  attack1 = function()
    scl()
    print("The monster starts to inflate itself, it almost blows up!")
    delay(4)
    print("Fortunately, it didn't blow up, and now he is deflating... On a fire wave going in your direction!")
    damage_multiplier = math.random(1, 100)
    damage_given = damage_multiplier * enemy_damage_overall
    your_hp = your_hp - damage_given
    print("You got " .. damage_given .. "HP of damage! Now you have " .. your_hp .. "HP.")
    delay(3)
    newturn()
  end, 
  
  attack2 = function()
    scl()
    if enemy_charging ~= true then
      print("The monster starts to charge up energy... It may blow up any second!")
      charged = 1
      enemy_charging = true
      delay(3)
      newturn()
    elseif enemy_charging == true then
      blow = math.random(1, 2)
      if blow == 1 and charged <= 2 then
	print("He keeps charging energy, this isn't going to be good...")
	charged = charged + 1
      elseif blow == 2 and charged == 1 then
	print("The enemy blows up in a fire fury!")
	damage_multiplier = math.random(1, 100)
	damage_given = damage_multiplier * enemy_damage_overall
	your_hp = your_hp - damage_given
	print("You got " .. damage_given .. "HP of damage! Now you have " .. your_hp .. "HP.")
	delay(3)
	newturn()
      elseif blow == 2 and charged == 2 then
	print("The enemy blows up in a huge fire wave! Everything got burned intensely...")
	damage_multiplier = math.random(1, 200)
	damage_given = damage_multiplier * enemy_damage_overall
	your_hp = your_hp - damage_given
	print("You got " .. damage_given .. "HP of damage! Now you have " .. your_hp .. "HP.")
	delay(3)
	newturn()
      elseif blow == 2 and charged >= 3 then
	print ("When the enemy starts to glow, he decides to blow up in a enormous, imense, fire attack.")
	print ("You got your hole body burned. That oughta not be good.")
	damage_multiplier = math.random(1, 700)
	-- Yep, 700, and don't you dare change this number. (Even though i think that i'll make it even bigger.)
	damage_given = damage_multiplier * enemy_damage_overall
	your_hp = your_hp - damage_given
	print("You got " .. damage_given .. "HP of damage! Now you have " .. your_hp .. "HP.")
	screwd = true
	delay(3)
	newturn()
      end
    end
  end
}
