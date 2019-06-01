{* 
 * Calcula serie de acordo com número fornecido pelo usuário
 * serie = 1 + 1/2 + 1/3 + 1/4 + 1/número
 *}

 algoritmo "exf3-4"
    const
        NUMERO_INICIAL = 1
        FATOR = 1

    var
        numero : inteiro
        serie : real
        contador : inteiro

    inicio

        serie <- 0

        escreval("Informe um número:")
        leia(numero)

        para contador de NUMERO_INICIAL ate numero passo 1 faca

            serie <- serie + (FATOR / contador)

        fimpara

        escreval("Resultado: " + numpcarac(serie))

    fimalgoritmo