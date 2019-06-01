{* Lê o valor de dois números inteiros e a operação aritmética
 * Calcula então a resposta adequada
 * +        -       Adição
 * -        -       Subtração
 * *        -       Multiplicação
 * /        -       Divisão
 *}

 algoritmo "exf2-9"

    const
        SOMA = "+"
        SUBTRACAO = "-"
        MULTIPLICACAO = "*"
        DIVISAO = "/"

    var
        primeiroNumero : inteiro
        segundoNumero : inteiro
        resultado : real
        operacao : caracter

    inicio

        escreval("Informe o primeiro número")
        leia(primeiroNumero)

        escreval("Informe o segundo número")
        leia(segundoNumero)

        escreval("+        -       Adição")
        escreval("-        -       Subtração")
        escreval("*        -       Multiplicação")
        escreval("/        -       Divisão")
        escreval("---------------------------------")
        escreval("Das oções acima, escolha qual operação deseja realizar")
        leia(operacao)

        escolha (operacao)

            caso SOMA
            
                resultado <- primeiroNumero + segundoNumero

            caso SUBTRACAO

                resultado <- primeiroNumero - segundoNumero

            caso MULTIPLICACAO

                resultado <- primeiroNumero * segundoNumero
            
            caso DIVISAO

                resultado <- primeiroNumero / segundoNumero

            outrocaso

                escreval("Inválido")

        fimescolha

        escreval(numpcarac(resultado))

    fimalgoritmo