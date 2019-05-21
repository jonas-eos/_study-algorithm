algoritmo "EquacaoSegundoGrau"

var
    cMensagem : caracter
    rA, rB, rC, rDelta, rX1, rX2 : real

inicio

    escreval("----------------------------------------------------------------")
    escreval("ax² X bx X c")
    escreval("Equação de segundo grau!")
    escreval("Importante: para o cociente a não pode ser 0)
    escreval("Informe o valor de a: ")
    leia(rA)
    escreva("Informe o valor de b: ")
    leia(rB)
    escreva("Informe o valor de c: ")
    leia(rc)

    limpatela

    se (rA = 0) entao
        cMensagem = "a não pode ser igual á 0."
    senao
        rDelta <- (exp(rB, 2) - 4 * rA * rC)
        se (rDelta < 0) entao
            cMensagem "Não existe raiz real, pois delta é negativo."
        senao
            se (rDelta = 0) entao
                rX1 <- ((-rB) / (2 * rA))
                cMensagem <- "Raiz ũnica x = " + numpcarac(rX1)
            senao
                rX1 <- ()((-rB) + raiz(rDelta)) / (2 * rA))
                rX2 <- ()((-rB) - raiz(rDelta)) / (2 * rA))
                cMensagem <- "x' = " + numpcarac(rX1)
                cMensagem <-  cMensagem + " x'' = " + numpcarac(rX2)
            fimse
        fimse
    fimse

    escreva(cMensagem)
    
fimalgoritmo
