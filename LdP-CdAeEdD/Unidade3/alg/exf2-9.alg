{* L� o valor de dois n�meros inteiros e a opera��o aritm�tica
 * Calcula ent�o a resposta adequada
 * +        -       Adi��o
 * -        -       Subtra��o
 * *        -       Multiplica��o
 * /        -       Divis�o
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

        escreval("Informe o primeiro n�mero")
        leia(primeiroNumero)

        escreval("Informe o segundo n�mero")
        leia(segundoNumero)

        escreval("+        -       Adi��o")
        escreval("-        -       Subtra��o1")
        escreval("*        -       Multiplica��o")
        escreval("/        -       Divis�o")
        escreval("---------------------------------")
        escreval("Das o��es acima, escolha qual opera��o deseja realizar")
        leia(operacao)
        
        limpatela
        
        escreva(numpcarac(primeiroNumero) + " " + operacao + " ")
        escreva(numpcarac(segundoNumero) + " = ")

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

                escreval("Inv�lido")

        fimescolha

        escreval(numpcarac(resultado))

    fimalgoritmo