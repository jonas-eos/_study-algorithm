{*
 * Calcula fator de um número fornecido pelo usuário
 * fator = 1 x 2 x 3 x (numero - 1)
 *}

 algoritmo "exf3-5"
    const
        NUMERO_INICIAL = 2

    var
        numero : inteiro
        fator : inteiro
        contador : inteiro

    inicio

        fator <- 1

        escreval("Informe o número")
        leia(numero)

        para contador de NUMERO_INICIAL ate numero passo 1 faca

            fator <- fator * contador

        fimpara

        escreval("Resultado do fator: " + numpacarac(fator))

    fimalgoritmo