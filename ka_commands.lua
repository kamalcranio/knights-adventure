[[Nada al�m de um pacote de fun��es essenciais para o programa]]
function tempoEspera(i)
local tempoFinal = os.time() + i
while os.time() <= tempoFinal do end
end
