{*
 * Descri��o            Em uma quantidade de n�meros informado
 *                      � encontrado o maior e o menor n�mero.
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
    escreva("Quantos n�meros voc� vai informar? ")
    leia(quantidadeDeNumeros)

    {*------------------------------------------------------------------------*}

    {* Processamento / Entrada *}
    para contador de 1 ate quantidadeDeNumeros passo 1 faca

        escreva("Informe o n�mero: ")
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
    escreval("Maior n�mero: " + numpcarac(maiorNumero))
    escreva("Menor n�mero: " + numpcarac(menorNumero))

fimalgoritmo