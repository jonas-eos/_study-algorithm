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

        enquanto ((primeiroNumero <> 1) e (segundoNumero <> 1)) faca

            ehDivisivel <- falso

            se (nao (primeiroNumero mod multiplo)) entao

                primeiroNumero <- primeiroNumero / multiplo
                ehDivisivel <- verdadeiro

            fimse

            se (nao (segundoNumero mod multiplo)) entao

                segundoNumero <- segundoNumero / multiplo
                ehDivisivel <- verdadeiro

            fimse

            se(ehDivisivel) entao
                
                mmc <- mmc * multiplo

            fimse

            multiplo <- multiplo + 1

        fimenquanto

        escreval("MMC = " + numpcarac(mmc))

    fimalgoritmo