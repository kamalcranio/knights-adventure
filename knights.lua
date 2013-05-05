-- knights-adventure Linux pre-compiled file
-- A permiss�o � garantida, livre de custo, para qualquer pessoa que obtenha uma c�pia deste software e os documentos
-- associados ao mesmo (o "Software"), com o poder de usar, modificar, retirar partes do c�digo para
--futuros softwares, publicar, distribuir, sublicenciar, e/ou vender c�pias do Software, e permitir � indiv�duos
-- saber por quem o software est� sendo fornecido para tal.

-- Os termos acima e os comunicados a seguir dever�o se encontrar em qualquer c�pia ou parte substancial do Software.

-- O SOFTWARE � FORNECIDO SEM GARANTIA DE QUALQUER FORMA, EXPL�CITA OU IMPL�CITA, LIMITADO APENAS �S GARANTIAS DE
-- MERCADO, RE-FORMA��O PARA ALGUM PROP�SITO EM PARTICULAR E N�O INFRIGIMENTO. EM NENHUM MOMENTO OS AUTORES OU
-- DONOS DOS DIREITOS DO SOFTWARE DEVEM SER PUNIDOS POR QUALQUER CULPA, DANOS OU OUTRAS RAZ�ES DECORRENTES DO
-- SOFTWARE DESCRITO.


do
function tempoEspera(i)
local tempoFinal = os.time() + i
while os.time() <= tempoFinal do end
end

function engineStartUp() -- FUN��O DE IN�CIO
screenClear = "clear" -- CLS para win32/64 e CLEAR para unix
version = "0.0.6a"
title = "The knights adventure " .. version .. " - By Kamalcranio"
SuaVida = 3000
VidaInimigo = 3000
SuaMana = 1000
local Rodada = 0
tipoDoInimigo = nil
print ("KCRG Engine... Starting Up.")
print (math.randomseed(os.time()))
print ("KCR Team. Sheffield, England.")
print ("Configuring number dump...")
print (math.random(100))
print (math.random(1000))
print (math.random(10000))
tempoEspera(3)
decideInimigo()
end

function inicio()
if VidaInimigo <= 0 then
vitoria()
elseif SuaVida <= 0 then
derrota()
end
os.execute(screenClear)
print ("------------------------------")
print (title)
print ("------------------------------")
print ("Sua vida: " .. SuaVida .. " Sua Mana: " .. SuaMana)
print ("Vida do inimigo: " .. VidaInimigo)
print ("------------------------------")
print ("� a sua vez! Decida qual ataque voc� usar�:")
print ("e - Espada")
print ("m - Magia")
io.output():write("O que voc� vai usar? ")
local usar = io.input():read()
if usar == "e" then
espada()
elseif usar == "m" then
magia()
elseif usar ~= "e" then
if usar ~= "m" then
inicio()
end
end
end

function espada()
os.execute(screenClear)
print (title)
print ("Qual tipo de ataque voc� far�?")
print ("e - Enfiar")
print ("c - Cortar")
print ("v - Voltar para o in�cio")
local Espada = io.input():read()
if Espada == "e" then
espadaEnfia()
elseif Espada == "c" then
espadaCorte()
elseif Espada == "v" then
inicio()
elseif Espada ~= "e" then
if Espada ~= "c" then
if Espada ~= "v" then
espada()
end
end
end
end

function magia()
os.execute(screenClear)
print (title)
print ("Qual o tipo de magia voc� quer usar?")
print ("heal - recupera at� 400HP - Custa 200MP")
print ("gran heal - Recupera at� 600HP - Custa 350MP")
print ("fire - Ataca com fogo - Custa 300MP")
print ("plasma - Ataca com eletrcidade - Custa 400MP")
print ("water strike - Ataca com �gua - Custa 350MP")
print ("Digite v para voltar")
io.output():write("Qual magia voc� vai usar? ")
local Magia = io.input():read()
if Magia == "heal" then
if SuaMana >= 200 then
magiaHeal()
elseif SuaMana < 200 then
print ("Voc� n�o tem mana suficiente para executar essa magia!")
tempoEspera(3)
inicio()
end
elseif Magia == "gran heal" then
if SuaMana >= 350 then
magiaGranHeal()
elseif SuaMana < 350 then
print ("Voc� n�o tem mana suficiente para executar essa magia!")
tempoEspera(3)
inicio()
end
elseif Magia == "fire" then
if SuaMana >= 300 then
magiaFire()
elseif SuaMana < 300 then
print ("Voc� n�o tem mana suficiente para executar essa magia!")
tempoEspera(3)
inicio()
end

elseif Magia == "plasma" then
if SuaMana >= 400 then
magiaPlasma()
elseif SuaMana < 400 then
print ("Voc� n�o tem mana suficiente para executar essa magia!")
tempoEspera(3)
inicio()
end

elseif Magia == "v" then
inicio()
elseif Magia == "water strike" then
if SuaMana >= 350 then
magiaWaterStrike()
elseif SuaMana < 350 then
print ("Voc� n�o tem mana suficiente para executar essa magia!")
tempoEspera(3)
inicio()
end
elseif Magia ~= "heal" then
if Magia ~= "gran heal" then
if Magia ~= "fire" then
if Magia ~= "plasma" then
if Magia ~= "v" then
if Magia ~= "water strike" then
magia()
end
end
end
end
end
end
end

function espadaEnfia()
os.execute(screenClear)
if espadaPrendeu == true then
if espadaPresaTurno >= 3 then
print ("Voc� puxou a espada...")
tempoEspera(2)
io.output():write(" E a arrancou do inimigo!")
espadaPrendeu = false
tempoEspera(3)
espadaEnfia()
end
espadaPresaTurno = espadaPresaTurno + 1
print ("Voc� puxou a espada...")
tempoEspera(2)
io.output():write(" Mas ela n�o saiu do lugar!")
tempoEspera(2)
ataqueInimigo()
end
print ("Voc� est� atacando!")
tempoEspera(3)
if variavelInimigo == "agua" then
danoVoceInimigo = math.random(10, 50)
elseif variavelInimigo == "fogo" then
danoVoceInimigo = math.random(3, 20)
elseif variavelInimigo == "madeira" then
danoVoceInimigo = math.random(50, 100)
espadaPresa = math.random(1, 5)
elseif variavelInimigo == "humano" then
danoVoceInimigo = math.random(250, 525)
elseif variavelInimigo == "fantasma" then
print ("Azar, colega, voc� n�o pode acertar um fantasma!")
tempoEspera(4)
ataqueInimigo()
end
chancesAcerto = math.random(1, 3)
if chancesAcerto == 3 then
print ("Voc� errou!")
tempoEspera(2)
ataqueInimigo()
end
VidaInimigo = VidaInimigo - danoVoceInimigo
os.execute(screenClear)
print ("Voc� acertou o inimigo e tirou " .. danoVoceInimigo .. "HP de dano!")
print ("Agora ele possui " .. VidaInimigo .. "HP!")
if espadaPresa == 5 then
print ("Mas a sua espada ficou presa! Voc� n�o pode us�-la por enquanto!")
espadaPrendeu = true
espadaPresaTurno = 0
end
tempoEspera(2)
ataqueInimigo()
end

function magiaWaterStrike()
os.execute(screenClear)
print ("Voc� est� atacando com a magia!")
tempoEspera(3)
SuaMana = SuaMana - 350
if variavelInimigo == "agua" then
danoVoceInimigo = math.random(-500, -200)
VidaInimigo = VidaInimigo - danoVoceInimigo
print ("Voc� aumentou a vida dele!")
print ("Agora ele possui " .. VidaInimigo .. "HP!")
tempoEspera(4)
ataqueInimigo()
elseif variavelInimigo == "fogo" then
danoVoceInimigo = math.random(400, 750)
elseif variavelInimigo == "madeira" then
danoVoceInimigo = math.random(50, 150)
elseif variavelInimigo == "humano" then
danoVoceInimigo = math.random(100, 275)
elseif variavelInimigo == "fantasma" then
danoVoceInimigo = math.random(40, 200)
end
print ("Voc� acertou o inimigo e tirou " .. danoVoceInimigo .. "HP dele!")
print ("Agora ele possui " .. VidaInimigo .. "HP!")
tempoEspera(3)
ataqueInimigo()
end

function espadaCorte()
os.execute(screenClear)
if espadaPrendeu == true then
if espadaPresaTurno >= 3 then
print ("Voc� puxou a espada...")
tempoEspera(2)
io.output():write(" E a arrancou do inimigo!")
espadaPrendeu = false
tempoEspera(3)
espadaEnfia()
end
espadaPresaTurno = espadaPresaTurno + 1
print ("Voc� puxou a espada...")
tempoEspera(2)
io.output():write(" Mas ela n�o saiu do lugar!")
tempoEspera(2)
ataqueInimigo()
end
print ("Voc� est� atacando!")
tempoEspera(3)
if variavelInimigo == "agua" then
danoVoceInimigo = math.random(30, 80)
elseif variavelInimigo == "fogo" then
danoVoceInimigo = math.random(0, 10)
elseif variavelInimigo == "madeira" then
danoVoceInimigo = math.random(100, 200)
espadaPresa = math.random(1, 10)
elseif variavelInimigo == "humano" then
danoVoceInimigo = math.random(150, 450)
elseif variavelInimigo == "fantasma" then
print ("Azar, colega, voc� n�o pode acertar um fantasma!")
tempoEspera(4)
ataqueInimigo()
end
chancesAcerto = math.random(1, 100)
if chancesAcerto >= 88 then
print ("Voc� errou!")
tempoEspera(2)
ataqueInimigo()
end
VidaInimigo = VidaInimigo - danoVoceInimigo
os.execute(screenClear)
print ("Voc� acertou o inimigo e tirou " .. danoVoceInimigo .. "HP de dano!")
print ("Agora ele possui " .. VidaInimigo .. "HP!")
if espadaPresa == 10 then
print ("Mas a sua espada ficou presa! Voc� n�o pode us�-la por enquanto!")
espadaPrendeu = true
espadaPresaTurno = 0
end
tempoEspera(2)
ataqueInimigo()
end

function magiaHeal()
os.execute(screenClear)
print ("Voc� est� fazendo a magia!")
tempoEspera(3)
SuaMana = SuaMana - 200
vidaRecuperada = math.random(200, 400)
SuaVida = SuaVida + vidaRecuperada
os.execute(screenClear)
print ("Voc� recuperou " .. vidaRecuperada .. "HP!")
print ("Voc� possui " .. SuaVida .. "HP agora.")
tempoEspera(2)
ataqueInimigo()
end

function magiaGranHeal()
os.execute(screenClear)
print ("Voc� est� fazendo a magia!")
tempoEspera(3)
SuaMana = SuaMana - 350
vidaRecuperada = math.random(400, 600)
SuaVida = SuaVida + vidaRecuperada
os.execute(screenClear)
print ("Voc� recuperou " .. vidaRecuperada .. "HP!")
print ("Voc� possui " .. SuaVida .. "HP agora.")
tempoEspera(2)
ataqueInimigo()
end

function magiaFire()
os.execute(screenClear)
print ("Voc� est� atancando com a magia!")
tempoEspera(3)
SuaMana = SuaMana - 300
if variavelInimigo == "agua" then
danoVoceInimigo = math.random(0, 5)
elseif variavelInimigo == "fogo" then
danoVoceInimigo = math.random(-500, -200)
VidaInimigo = VidaInimigo - danoVoceInimigo
print ("Voc� aumentou a vida dele!")
print ("Agora ele possui " .. VidaInimigo .. "HP!")
tempoEspera(4)
ataqueInimigo()
elseif variavelInimigo == "madeira" then
danoVoceInimigo = math.random(300, 600)
elseif variavelInimigo == "humano" then
danoVoceInimigo = math.random(200, 350)
elseif variavelInimigo == "fantasma" then
danoVoceInimigo = math.random(150, 400)
end
VidaInimigo = VidaInimigo - danoVoceInimigo
os.execute(screenClear)
print ("Voc� tirou " .. danoVoceInimigo .. "HP de dano!")
print ("Agora ele possui " .. VidaInimigo .. "HP de vida!")
tempoEspera(2)
ataqueInimigo()
end

function magiaPlasma()
os.execute(screenClear)
print ("Voc� est� fazendo a magia!")
tempoEspera(3)
SuaMana = SuaMana - 400
if variavelInimigo == "agua" then
danoVoceInimigo = math.random(300, 600)
eletrificaAgua = math.random(1, 5)
elseif variavelInimigo == "fogo" then
danoVoceInimigo = 0
elseif variavelInimigo == "madeira" then
danoVoceInimigo = math.random(100, 150)
elseif variavelInimigo == "humano" then
danoVoceInimigo = math.random(300, 500)
paralisaTF = math.random(1, 4)
elseif variavelInimigo == "fantasma" then
danoVoceInimigo = math.random(200, 300)
end
VidaInimigo = VidaInimigo - danoVoceInimigo
os.execute(screenClear)
print ("Voc� tirou " .. danoVoceInimigo .. "HP de dano!")
print ("Agora ele possui " .. VidaInimigo .. "HP de vida!")
tempoEspera(2)
if paralisaTF == 4 then
rodadasParalisadas = 0
print ("O inimigo est� paralisado com a eletrecidade!")
inimigoParalisado = true
end
tempoEspera(2)
ataqueInimigo()
end

function ataqueInimigo()
if VidaInimigo <= 0 then
vitoria()
end
os.execute(screenClear)
if inimigoParalisado then
if rodadasParalisadas <= 0 then
rodadasParalisadas = rodadasParalisadas + 1
print ("O inimigo n�o pode se mover... Est� paralisado!")
tempoEspera(2)
turno()
end
end
local qualAtaque = math.random(1, 3)
if qualAtaque == 3 then
if magiaUsou == true then
inimigoFisico()
else
inimigoMagia()
end
else
inimigoFisico()
end
end

function inimigoFisico()
inimigoDano = math.random(150, 500)
SuaVida = SuaVida - inimigoDano
os.execute(screenClear)
print ("Seu inimigo te atacou! Ele tirou " .. inimigoDano .. "HP de dano!")
print ("Voc� agora possui " .. SuaVida .. "HP de vida!")
tempoEspera(2)
turno()
end

function inimigoMagia()
os.execute(screenClear)
magiaInimigo = math.random(0, 2)
if magiaInimigo == 0 then
os.execute(screenClear)
print ("O inimigo est� recuperando a pr�pria vida!")
tempoEspera(2)
InimigoRecuperou = math.random(200, 300)
VidaInimigo = VidaInimigo + InimigoRecuperou
print ("O inimigo recuperou " .. InimigoRecuperou .. "HP!")
print ("Agora ele possui " .. VidaInimigo .. "HP!")
else
os.execute(screenClear)
print ("O inimigo est� fazendo uma magia!")
tempoEspera(2)
inimigoDano = math.random(150, 250)
SuaVida = SuaVida - inimigoDano
os.execute(screenClear)
print ("O inimigo tirou " .. inimigoDano .. "HP de voc�!")
print ("Voc� agora tem " .. SuaVida .. "HP!")
end
tempoEspera(2)
turno()
end

function turno()
SuaMana = SuaMana + 75
inicio()
end

function vitoria()
os.execute(screenClear)
print (title)
print ("----------------------------------")
print ("VOC� VENCEU!")
print ("Status:")
print (SuaVida .. "HP" .. " - " .. SuaMana .. "MP")
tempoEspera(5)
print ("Cr�ditos:")
print ("C�digo: Kamalcranio")
print ("----------------------------------")
print ("Digite S para jogar novamente, ou digite N para sair")
novamente = io.input():read()
if novamente == "s" then
engineStartUp()
elseif novamente == "n" then
os.exit()
end
os.exit()
end

function derrota()
os.execute(screenClear)
print (title)
print ("-----------------------------------")
print (title)
print ("-----------------------------------")
print ("VOC� PERDEU!")
print ("Situa��o do inimigo: " .. VidaInimigo)
tempoEspera(5)
print ("Cr�ditos:")
print ("C�digo: Kamalcranio")
print ("-----------------------------------")
print ("Digite S para jogar novamente, ou digite N para sair")
novamente = io.input():read()
if novamente == "s" then
engineStartUp()
elseif novamente == "n" then
os.exit()
end
os.exit()
end

function decideInimigo()
os.execute(screenClear)
print (title)
tipoDoInimigo = nil
print ("Andando, tranquilamente... quando")
print ("VOOOOOOSH!")
local tipoDoInimigo = math.random(1, 4)
if tipoDoInimigo == 2 then
variavelInimigo = "agua"
NomeInimigo = "�gua"
printInimigo()
elseif tipoDoInimigo == 4 then
variavelInimigo = "fogo"
NomeInimigo = "fogo"
printInimigo()
elseif tipoDoInimigo <= 3 then
variavelInimigo = "madeira"
NomeInimigo = "madeira"
printInimigo()
elseif tipoDoInimigo <= 1 then
variavelInimigo = "humano"
NomeInimigo = "humano"
printInimigo()
end
if NomeInimigo == nil then
decideInimigo()
end
printInimigo()
end

function printInimigo()
print ("Um inimigo tipo " .. NomeInimigo .. " apareceu!")
tempoEspera(3)
print ("Aperte ENTER para come�ar a batalha!")
io.input():read()
inicio()
end

engineStartUp()
end
