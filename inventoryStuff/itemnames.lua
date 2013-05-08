require(ka_commands)
item = {}
bag = {}
itemname = {}
item[1] = "Nada"
item[2] = "Pequena pocao de mana"
item[3] = "Pequena pocao de vida"
item[4] = "Espada enferrujada"
item[5] = "Escudo de madeira"
function nominate()
count = 1
while count <= #bag do
	i = count
	if bag[i] == 1 then
		itemname[i] = item[1]
	elseif bag[i] == 2 then
		itemname[i] = item[2]
	elseif bag[i] == 3 then
		itemname[i] = item[3]
	elseif bag[i] == 4 then
		itemname[i] = item[4]
	elseif bag[i] == 5 then
		itemname[i] = item[5]
	elseif bag[i] == 0 then
		itemname[i] = "Nothing"
	end
	count = count + 1
end
end

function item1()
print("Você passa a mão sobre aquele espaço vazio... Nada acontece.")
end

function item2()
print("Você abre um pequeno frasco com um líquido azul dentro...")
tempo
