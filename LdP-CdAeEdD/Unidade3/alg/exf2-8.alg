{* 
 * Calcula o que deve ser pago por um produto considerando:
 * preço normal de etiqueta e a escolha da condição de pagamento
 * 1        -       À vista em dinheiro ou cheque, 10% de desconto
 * 2        -       À vista no cartão de crédito, 5% de desconto
 * 3        -       Em duas vezes, preço normal
 * 4        -       Em três vezes, preço normal etiqueta mais 10% juros
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

        escreval("Informe a opção de pagamento:")
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

                escreval("Opção inválida!")

            fimescolha

        escreval("Valor à pagar: " + numpcarac(precoParaPagar))

    fimalgoritmo
