{*
 * Descrição            Em uma quantidade de números informado
 *                      é encontrado o maior e o menor número.
 *
 *
 * @pacote              ALP1/UN.03
 * @autor               Jonas Evangelista(jonas.eos@outlook.com)
 * @desde               05/26/2019
 * @version
 *----------------------------------------------------------------------------*}
algoritmo "maiorMenor"

var
    contador, numero, maiorNumero, menorNumero, quantidadeDeNumeros : inteiro

inicio

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    escreva("Quantos números você vai informar? ")
    leia(quantidadeDeNumeros)

    {*------------------------------------------------------------------------*}

    {* Processamento / Entrada *}
    para contador de 1 ate quantidadeDeNumeros passo 1 faca

        escreva("Informe o número: ")
        leia(numero)

        se (numero > maiorNumero) entao

            maiorNumero <- numero

        senao

            se (numero < menorNumero) entao

                menorNumero <- numero

            fimse
        fimse

    fimpara

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreval("Maior número: " + numpcarac(maiorNumero))
    escreva("Menor número: " + numpcarac(menorNumero))

fimalgoritmo