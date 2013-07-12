-- This is the file for the cure spell

cure = {mana = 100, name = "Light Cure", description = "Can cure at least 250HP", 
spell = function()
  scl()
  print("You start to heal yourself with magic")
  delay(3)
  your_mana = your_mana - 100
  hp_recovered = math.random(25, 250)
  your_hp = your_hp + hp_recovered
  print("You recovered " .. hp_recovered .. "HP! Now you have " .. your_hp .. "HP.")
  delay(4)
  enemyTurn()
  end
}