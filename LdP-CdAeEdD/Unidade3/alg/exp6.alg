{*
 * 10% de juros para cada presta��o em atraso
 * 10% de desconto sobre o valor acrescentado
 * Ler valor da presta��o
 * Apresentar o valor final a pagar
 * Calcular o prejuizo do comerciante em opera��o
*}

algoritmo "valor_pagamento"

    const
        JUROS = 10 / 100
        DESCONTO = 10 / 100

    var
        valorPrestacao : real
        valorFinalParaPagar : real
        prejuizoDoComerciante : real

    inicio

        escreval("Informe o valor da presta��o")
        leia(valorPrestacao)

        valorFinalParaPagar <- valorPrestacao * (1 + JUROS)
        valorFinalParaPagar <- valorFinalParaPagar * (1 - DESCONTO)

        prejuizoDoComerciante <- valorPrestacao - valorFinalParaPagar

        escreval("Valor total para pagar " + numpcarac(valorFinalParaPagar))
        escreval("Prejuizo do comerciante " + numpcarac(prejuizoDoComerciante))

    fimalgoritmo