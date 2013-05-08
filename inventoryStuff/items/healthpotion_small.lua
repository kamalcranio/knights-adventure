sHealthpotion_ID = 3
name_sHealthpotion = "Pocao pequena de vida"
attributes_sHealthpotion = "Recupera 350HP"
function sHealthpotion_action()
SuaVida = SuaVida + 350
end

function explain_sHealthpotion()
print(attributes_sHealthpotion)
end
