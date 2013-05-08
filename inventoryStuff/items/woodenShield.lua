woodenShield_ID = 5
name_woodenShield = "Escudo de madeira"
attributes_woodenShield = "Um escudo feito inteiramente de madeira, palmeira, provavelmente..."
function woodenShield_action()
inimigoDano = (inimigoDano / 100) * 92
suaVida = suaVida - inimigoDano
end

function explain_woodenShield()
print(attributes_woodenShield)
end
