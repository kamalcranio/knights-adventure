screwdSword_ID = 4
name_screwdSword = "Espada enferrujada"
attributes_screwdSword = "Uma espada enferrujada... Não muito boa contra inimigos resistentes, mas "
attributes_screwdSword2 = "boa o suficiente para treinar ou causar dano em pequenos adversários..."
function screwdSword_action()
if variavelInimigo == "agua" then
danoVoceInimigo = math.random(10, 50)
elseif variavelInimigo == "fogo" then
danoVoceInimigo = math.random(3, 20)
elseif variavelInimigo == "madeira" then
danoVoceInimigo = math.random(35, 80)
elseif variavelInimigo == "humano" then
danoVoceInimigo = math.random(125, 325)
elseif variavelInimigo == "fantasma" then
print("Você não pode fazer ataques físicos em um fantasma!")
danoVoceInimigo = 0
end
VidaInimigo = VidaInimigo - danoVoceInimigo
end

function explain_screwdSword()
print(attributes_screwdSword)
print(attributes_screwdSword2)
end
