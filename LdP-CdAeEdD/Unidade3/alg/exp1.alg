{*
 * Calcular a m�dia ponderada entre 5 n�meros quaisquer
 * O peso � 1, 2, 3, 4, 5 respectivamente
 *}

 algoritmo "media_ponderada"
    const
        PRIMEIRO_NUMERO = 1
        ULTIMO_NUMERO = 5

    var
        numero : real
        mediaPonderada : real
        somatorioNumeros : real
        somatorioPeso : real
        contador : inteiro

    inicio

        somatorioNumeros <- 0
        somatorioPeso <- 0

        para contador de PRIMEIRO_NUMERO ate ULTIMO_NUMERO passo 1 faca

            escreval("Informe o " + numpcarac(contador) + "� n�mero")
            leia(numero)

            somatorioNumeros <- somatorioNumeros + (numero * contador)
            somatorioPeso <- somatorioPeso + contador

        fimpara

        mediaPonderada <- somatorioNumeros / somatorioPeso
        
        limpatela

        escreval("M�dia ponderada: " + numpcarac(mediaPonderada))
        
    fimalgoritmo