{* 
 * Calcula serie de acordo com n�mero fornecido pelo usu�rio
 * serie = 1 + 1/2 + 1/3 + 1/4 + 1/n�mero
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

        escreval("Informe um n�mero:")
        leia(numero)

        para contador de NUMERO_INICIAL ate numero passo 1 faca

            serie <- serie + (FATOR / contador)

        fimpara

        escreval("Resultado: " + numpcarac(serie))

    fimalgoritmo