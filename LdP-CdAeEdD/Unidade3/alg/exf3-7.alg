{*
 * Ler um conjunto de 20 n�meros inteiros
 * mostrar qual foi o maior e o menor valor
*}

algoritmo "maior_menor_numero"

    const
        PRIMEIRA_LEITURA = 1
        QUANTIDADE_DE_LEITURA = 20

    var
        numero : inteiro
        menorNumero : inteiro
        maiorNumero : inteiro
        contador : inteiro

    inicio

        para contador de PRIMEIRA_LEITURA ate QUANTIDADE_DE_LEITURA passo 1 faca

            escreval("Informe o " + numpcarac(contador) + " � n�mero")
            leia(numero)

            se(contador = PRIMEIRA_LEITURA) entao

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

    escreval("Maior n�mero " + numpcarac(maiorNumero))
    escreval("Menor n�mero " + numpcarac(menorNumero))

    fimalgoritmo