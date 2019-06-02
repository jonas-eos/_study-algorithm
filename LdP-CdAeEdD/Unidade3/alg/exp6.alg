{*
 * 10% de juros para cada prestação em atraso
 * 10% de desconto sobre o valor acrescentado
 * Ler valor da prestação
 * Apresentar o valor final a pagar
 * Calcular o prejuizo do comerciante em operação
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

        escreval("Informe o valor da prestação")
        leia(valorPrestacao)

        valorFinalParaPagar <- valorPrestacao * 1 + JUROS
        valorFinalParaPagar <- valorFinalParaPagar * 1 + DESCONTO

        prejuizoDoComerciante <- valorFinalParaPagar - valorPrestacao

        escreval("Valor total para pagar " + numpcarac(valorFinalParaPagar))
        escreval("Prejuizo do comerciante " + numpcarac(prejuizoDoComerciante))

    fimalgoritmo