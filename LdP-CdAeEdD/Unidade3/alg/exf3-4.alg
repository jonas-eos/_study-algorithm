{* 
 * Calcula H de acordo com número fornecido pelo usuário
 * H = 1 + 1/2 + 1/3 + 1/4 + 1/número
 *}

 algoritmo "exf3-4"
    const
        NUMERO_INICIAL = 2
        FATOR = 1

    var
        numero : inteiro
        h : real
        contado : inteiro

    inicio

        h <- 1

        escreval("Informe um número:")
        leia(numero)

        para contador de NUMERO_INICIAL ate numero passo 1 faca

            h<- h + (FATOR/contado)

        fimpara

        escreval("Resultado: " + numpcarac(h))

    fimalgoritmo