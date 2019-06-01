{*
 * Calcular a média ponderada entre 5 números quaisquer
 * O peso é 1, 2, 3, 4, 5 respectivamente
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

        somatorio <- 0
        somatorioPeso <- 0

        para contador de PRIMEIRO_NUMERO ate ULTIMO_NUMERO passo 1 faca

            escreval("Informe o " + numpcarac(contador) + "ª número")
            leia(numero)

            somatorioNumeros <- somatorio + (numero * contador)
            somatorioPeso <- somatorioPeso + contador

        fimpara

        mediaPonderada = somatorioNumeros / somatorioPeso

        escreval("Média ponderada: " + numpcarac(mediaPonderada))
        
    fimalgoritmo