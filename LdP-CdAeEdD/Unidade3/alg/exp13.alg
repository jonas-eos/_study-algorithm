{*
 * Calculma o MMC de um número fornecido
 *}

 algoritmo "MMC"

    var
        primeiroNumero : inteiro
        segundoNumero : inteiro
        contador : inteiro
        multiplo : inteiro
        mmc : inteiro
        ehDivisivel : logico

    inicio

        multiplo <- 2
        mmc <- 1

        escreval("Informe um primeiro número")
        leia(primeiroNumero)

        escreval("Informe o segundo número")
        leia(segundoNumero)

        enquanto ((primeiroNumero > 1) ou (segundoNumero > 1)) faca

            ehDivisivel <- falso

            se (primeiroNumero mod multiplo = 0) entao

                primeiroNumero <- primeiroNumero div multiplo
                ehDivisivel <- verdadeiro

            fimse

            se (segundoNumero mod multiplo = 0) entao

                segundoNumero <- segundoNumero div multiplo
                ehDivisivel <- verdadeiro

            fimse

            se(ehDivisivel) entao
                
                mmc <- mmc * multiplo
                
            senao

                multiplo <- multiplo + 1

            fimse


        fimenquanto

        escreval("MMC = " + numpcarac(mmc))

    fimalgoritmo