{* 
 * Calcula o que deve ser pago por um produto considerando:
 * pre�o normal de etiqueta e a escolha da condi��o de pagamento
 * 1        -       � vista em dinheiro ou cheque, 10% de desconto
 * 2        -       � vista no cart�o de cr�dito, 5% de desconto
 * 3        -       Em duas vezes, pre�o normal
 * 4        -       Em tr�s vezes, pre�o normal etiqueta mais 10% juros
 *}

 algoritmo "exf2-8"

    const
        A_VISTA_DINHEIRO_CHEQUE = 1
        A_VISTA_NO_CREDITO = 2
        DUAS_PARCELAS = 3
        TRES_PARCELAS = 4

    var
        precoProduto : real
        opcaoDePagamento : inteiro
        precoParaPagar : real

    inicio

        escreval("Informe o valor do produto:")
        leia(precoProduto)

        escreval("Informe a op��o de pagamento:")
        leia(opcaoDePagamento)

        escolha (opcaoDePagamento)

            caso A_VISTA_DINHEIRO_CHEQUE

                precoParaPagar <- precoProduto * ( 1 - 0.1 )

            caso A_VISTA_NO_CREDITO

                precoParaPagar <- precoProduto * ( 1 - 0.05 )

            caso DUAS_PARCELAS

                precoParaPagar <- precoProduto

            caso TRES_PARCELAS

                precoParaPagar <- precoProduto * ( 1 + 0.1 )

            outrocaso

                escreval("Op��o inv�lida!")

            fimescolha

        escreval("Valor � pagar: " + numpcarac(precoParaPagar))

    fimalgoritmo
