{*
 * Mostra a série de Fibonacci até o vigésimo termo
 * Fibonacci = 1 + 1 + 2 + 3 + n
 *}

 algoritmo "Fibonacci"

    const
        NUMERO_INICIAL = 1
        TERMO_FINAL = 20
    
    var
        contador : inteiro
        fibonacci : inteiro
        termoAnterior : inteiro

    inicio

        fibonacci <- 0
        termoAnterior <- 0
        termoAtual <- 1

        para contador de NUMERO_INICIAL ate TERMO_FINAL passo 1 faca

            fibonacci <- termoAnterior + termoAtual

            escreval(numpcarac(fibonacci))

            termoAnteior <- termoAtual
            termoAtual <- fibonacci

        fimpara

    fimalgoritmo