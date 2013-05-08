[[Nada além de um pacote de funções essenciais para o programa]]
function tempoEspera(i)
local tempoFinal = os.time() + i
while os.time() <= tempoFinal do end
end
