{*
 * Ler um conjunto de 20 números inteiros
 * mostrar qual foi o maior e o menor valor
*}

algoritmo

    cosnt
        PRIMEIRA_LEITURA = 1
        QUANTIDADE_DE_LEITURA = 20

    var
        numero : inteiro
        menorNumero : inteiro
        maiorNumero : inteiro
        contador : inteiro

    inicio

        para contador de PRIMEIRA_LEITURA ate QUANTIDADE_DE_LEITURA pass 1 faca

            escreval("Informe o " + numpcarac(contador) + " º número")
            leia(numero)

            se((contador = PRIMEIRA_LEITURA) entao

                menorNumero <- numero
                maiorNumero <- numero

            senao

                se(numero < menorNumero) entao

                    menorNumero <- numero

                fimse

                se(numero > maiorNumero) entao

                    maiorNumero <- numero

                fimse
            fimse
        fimpara

    escreval("Maior número" + numpcarac(maiorNumero))
    escreval("Menor número" + numpcarac(menorNumero))

    fimalgoritmo