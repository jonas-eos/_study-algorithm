{*
 * Descri��o        De uma quantidade de n�meros informado, informa a m�dia
 *                  total, o maior e o menor n�mero informado
 *
 *
 * @pacote          ALP1/UN.03
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/26/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "mediaMaiorMenor"

var
    numero, maiorNumeroInformado, menorNumeroInformado : inteiro
    quantidadeDeNumeroInformado, somaDosNumeros : inteiro
    
    mediaTotal : real

inicio
    {*------------------------------------------------------------------------*}

    {* Constructor *}
    somaDosNumeros <- 0
    quantidadeDeNumeroInformado <- 0

    {*------------------------------------------------------------------------*}

    {* Entrada *}    
    escreval("Para finalizar informe um n�mero negativo.")
    escreva("Informe um n�mero: ")
    leia(numero)

    {*------------------------------------------------------------------------*}

    {* Processamento / Entrada *}    
    menorNumeroInformado <- numero

    repita

        se (numero < 0) entao

            interrompa

        fimse

        quantidadeDeNumeroInformado <- quantidadeDeNumeroInformado + 1
        somaDosNumeros <- somaDosNumeros + numero

        se (numero > maiorNumeroInformado) entao

            maiorNumeroInformado <- numero

        fimse

        se (numero < menorNumeroInformado) entao
                
                menorNumeroInformado <- numero

        fimse
        
        escreval("Para finalizar informe um n�mero negativo.")
        escreva("Informe um n�mero: ")
        leia(numero)

    ate (falso)

    mediaTotal <- somaDosNumeros / quantidadeDeNumeroInformado

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreval("M�dia total dos n�meros: " + numpcarac(mediaTotal))
    escreval("Maior n�mero: " + numpcarac(maiorNumeroInformado))
    escreval("Menor n�mero: " + numpcarac(menorNumeroInformado))

fimalgoritmo