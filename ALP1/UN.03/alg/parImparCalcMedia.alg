{*
 * Descrição            parImparCalcMedia
 *
 *
 * @pacote              ALP1/UN.03
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/26/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "parImparCalcMedia"

var
    numero, quantidadeNumerosImpar, quantidadeNumerosLidos : inteiro
    quantidadeNumerosPar, somaDosNumeros : inteiro
    mediaAritmetica : real

inicio
    {*------------------------------------------------------------------------*}

    {* Constructor *}
    somaDosNumeros <- 0
    quantidadeNumerosImpar <- 0
    quantidadeNumerosLidos <- 0
    quantidadeNumerosPar <- 0

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    repita

        escreval("Para sair do algoritmo, informe 0.")
        escreva("Informe um número inteiro: ")
        leia(numero)

        {*--------------------------------------------------------------------*}

        {* Processamento *}
        se (numero = 0) entao
        
            interrompa

        fimse

        quantidadeNumerosLidos <- quantidadeNumerosLidos + 1
        somaDosNumeros <- somaDosNumeros + numero

        se (numero mod 2 = 0) entao

            quantidadeNumerosPar <- quantidadeNumerosPar + 1
        
        senao

            quantidadeNumerosImpar <- quantidadeNumerosImpar + 1

        fimse

    ate falso

    mediaAritmetica <- somaDosNumeros / quantidadeNumerosLidos
    
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreval("Quantidade de números lidos: " + numpcarac(quantidadeNumerosLidos))
    escreval("Média aritmética total: " + numpcarac(mediaAritmetica))
    escreval("Quantidade de número par: " + numpcarac(quantidadeNumerosPar))
    escreva("Quantidade de número impar: " + numpcarac(quantidadeNumerosImpar))

fimalgoritmo