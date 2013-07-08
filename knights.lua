--[[ Knights adventure remake 0.0.1A.
Listening to black sabath, everything is better, even more programming XD.
I dunno, but i think i'll not use any out-of-normal command library on this thing,
just a matter of time for me to say that. ]]
require "commands"
require "userconfig"
require "battlecommands"

function scl()
	os.execute ("clear")
end

function opening()
  scl()
	print("Kamalcranio (and contribuitors) presents: ")
	delay(3)
	print ("KNIGHTS ADVENTURE")
	print ("		Knights Adventure, version " .. version)
	print ("------------------------------------------------------------")
	-- There is a file called userconfig, where the damage configs are.
	if major_config == 'default' then
	  print("DAMAGE AND OTHERS OPTIONS ARE ON DEFAULT")
	  print("CHANGE IT ON THE DIFFICULTY (D) MENU")
	  enemy_damage_overall = 5
	  your_damage_overall = 5
	end
	io.write ("\n \n \n \n")
	print("Choose your option: ")
	print(" S - Start game ")	
	print(" D - Difficulty ")
	print(" E - Exit ")
	io.write("Type your option: ")
	opening_option = io.read()
	if opening_option == "s" then
	  newgame()
	elseif opening_option == "d" then
	  options()
	elseif opening_option == "e" then
	  os.exit()
	end
--[[ Here i am
	Rock you like a Hurricane
	ayualyuaaah!
	Scorpions. Just scorpions]]--
end

function options()
  print("Enemy damage ratio: " .. enemy_damage_overall)
  print("Your damage: " .. your_damage_overall)
  print("What do you want to do? ")
  print(" 1 - Change it ")
  print(" 2 - Back it up to the default settings")
  print(" 3 - Head back to the main menu")
  difficulty_change = io.read()
  if difficulty_change == "1" then
    -- Opens the userconfig file, and write that the default configs are now disabled.
    userconfig = io.open("userconfig.lua", "w+")
    userconfig:write("major_config = 'user' ")
    io.write("New enemy damage ratio: ")
    -- Same thing as the default config, but with different numbers.
    enemydamage = io.read()
    userconfig:write("enemy_damage_overall = " .. enemydamage .. " ")
    io.write("Your new damage ratio: ")
    yourdamage = io.read()
    userconfig:write("your_damage_overall = " .. yourdamage .. " ")
  elseif difficulty_change == "2" then
    -- Inverse of option 1, no need to explain, right?
    userconfig = io.open("userconfig.lua", "w+")
    userconfig:write("major_config = 'default'")
  elseif difficulty_change == "3" then
    opening()
  end    
end

function newgame()
  scl()
  print("Walking, peacefully...")
  -- The enemy_choose function is on the commands file, it returns a random type of enemy.
  enemy_type = enemy_choose()
  delay(3)
  print("When a enemy type " .. enemy_type .. " appears!")
  -- No shit, sherlock!
  delay(5)
  enemy_hp = 2950
  your_hp = 2950
  your_mana = 1000
  turn = 0
  battle_menu()
end

function battle_menu()
  scl()
  -- The if statement below prevents failed counter attack tries getting the new turn bonuses.
  if try_counter ~= true then
    newturn()
  elseif try_counter == true then
    try_counter = false
  end
  print("Enemy type: " .. enemy_type .. " - Turn: " .. turn)
  print("Your HP: " .. your_hp .. " - Your mana: " .. your_mana)
  print("Enemy HP: " .. enemy_hp)
  print("What are you going to do?")
  print("A - Attack")
  print("S - Spell")
  print("D - Defend")
  if enemy_attack_state == "miss" and your_attack_state == "defended" then
    counter = true
    print("C - Counter attack")
  elseif sword_stuck == true then
    print("P - Pull sword")
  end
  io.write("Your option: ")
  battle_option = io.read()
  if battle_option == "a" then
    phisical_attack()
  elseif battle_option == "s" then
    spell_menu()
  elseif battle_option == "d" then
    defend()
  elseif battle_option == "c" and counter == true then
    counter_attack()
  elseif battle_option == "c" and counter ~= true then
    print("You can't counter attack him now!")
    try_counter = true
    delay(3)
    battle_menu()
  elseif battle_option == "p" and sword_stuck == true then
    sword_takeout()
  elseif battle_option == "p" and sword_stuck ~= true then
    try_counter = true
    battle_menu()
  end
    
  
end

function phisical_attack()
  scl()
  print("You go, angry, towards the enemy with your sword...")
  delay(3)
  if enemy_type = "fire" then
    print("The sword goes all the way through the fire monster... He stays there, and you sword is hot.")
    print("No damage on him...")
  elseif enemy_type = "water" then
    print("What was i thinking? The sword simply goes trough the water monster, he's fine.")
    print("No damage given")
  elseif enemy_type = "human" then
    print("The man, scared, got seriously wounded! But he stays calm and looks at you with eyes of angry.")
    damage_onenemy()
    print("The enemy loses " .. damage .. "HP!")
    print("Now he has " .. enemy_HP .. "HP.")
  elseif enemy_type == "wood" then
    damage_onenemy()
    print("The enemy loses " .. damage .. "HP!")
    print("Now he has " .. enemy_HP .. "HP.")
    if sword_stuck == true then
      delay(3)
      print("And you sword got stuck on the monster's body!")
    end
  end


opening()
  