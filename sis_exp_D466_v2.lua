-- Criando Tabela de Registros --
BDpr{
    -- Pergunta 1 --
    , -- Resposta 1 --
    , 1
    ,-- Pergunta 2 --
    , -- Resposta 2 --
    , 1
    ,-- Pergunta 3 --
    , -- Resposta 3 --
    , 1   
    ,-- Pergunta 4 --
    , -- Resposta 4 --
    , 1
    ,-- Pergunta 5 --
    , -- Resposta 5 --
    , 1
    ,-- Pergunta 6 --
    , -- Resposta 6 --
    , 1
    ,-- Pergunta 7 --
    , -- Resposta 7 --
    , 1
    ,-- Pergunta 8 --
    , -- Resposta 8 --
    , 1
    ,-- Pergunta 9 --
    , -- Resposta 9 --
    , 1
    ,-- Pergunta 10 --
    , -- Resposta 10 --
    , 1
    ,-- Pergunta 11 --
    , -- Resposta 11 --
    , 1
    ,-- Pergunta 12 --
    , -- Resposta 12 --
    , 1
    ,-- Pergunta 13 --
    , -- Resposta 13 --
    , 1
    ,-- Pergunta 14 --
    , -- Resposta 14 --
    , 1
    ,-- Pergunta 15 --
    , -- Resposta 15 --
    , 1
    ,-- Pergunta 16 --
    , -- Resposta 16 --
    , 1
    ,-- Pergunta 17 --
    , -- Resposta 17 --
    , 1
    ,-- Pergunta 18 --
    , -- Resposta 18 --
    , 1
    ,-- Pergunta 19 --
    , -- Resposta 19 --
    , 1
    ,-- Pergunta 20 --
    , -- Resposta 20 --
    , 1
    ,-- Pergunta 21 --
    , -- Resposta 21 --
    , 1
}

-- Inicio do Sistema Lógico --
-- Introdução --
print(" --- Bem Vindo ao Sistema Expecialista da Diretriz N466/12 ---\n\n Digite o Numero Referente a Sua Resposta\n Precione ENTER para continuar")
nDig = io.read()
nDig = 0
-- Inicio do Questionario --
for i=1, #BDpr in 3 do
-- Inicio das Perguntas --
    if BDpr[i]==1 then -- Verifica se a pergunta já foi respondida --
        repeat
            print("\r" .. BDpr[i])
            print("[1] SIM      [2] NÃO")
            nDig = io.read()
            if nDig ~=1 or  nDig ~=2 then
                print("/r OPÇÃO INVALIDA")
            end
            BDpr[i+2] = nDig
        until nDig == 1 or nDig == 2
-- Inicio das Condições -- -- Defini 2 para as questões que não precisam mais ser realizadas --
        if nDig==2 and i>=1 and i<=10 then
            for j=j+2, #BDpr in 3 do
                BDpr[i] = 2
            end
        end
        if i == 5 then
            BDpr[4] = 2
            BDpr[19] = 2
            BDpr[22] = 2
            BDpr[25] = 2
            BDpr[28] = 2
            BDpr[31] = 2
            BDpr[46] = 2
            BDpr[49] = 2
        end
    end
end
-- Apresenta as Respostas Conforme Que Receberam 2 --
for i = 2, #BDpr in 3 do
    if BDpr[i+1] == 2 then
        print(BDpr[i])
    end
end

-- Recado para Rafael --
-- Não Testei porque ta sem os textos, Vamos testar dia 21 na aula ai a gente entrega --