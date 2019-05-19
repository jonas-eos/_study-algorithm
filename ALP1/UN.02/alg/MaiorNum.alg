{*
 * Programa         MaiorNum.alg
 * Descriçao        Entre dois valores fornecido, o alg informa qual o maior num
 *
 *
 * @pacote          ALP2/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/16/2019
 *}

{*----------------------------------------------------------------------------*}
algoritmo "MaiorNum"
{*----------------------------------------------------------------------------*}

{*
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         caracter Mensagem - Será construida durante o alg
 * @var         inteiro Numero<x> - Informado pelo usuário
*}
var
    cMensagem : caracter
    iNumero1, iNumero2 : inteiro
{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
inicio
    {*
     * Entrada
     *
     * Recebe os dois números para comparação
     *}
    escreva("Informe o primeiro número ")
    leia(iNumero1)
    escreva("Informe o segundo número ")
    leia(iNumero2)

    limpatela
    
    {*------------------------------------------------------------------------*}

    {* Processamento *}

    {* Compara e configura a mensagem caso os números sejam iguais }*
    se(iNumero1 = iNumero2) entao
        cMensagem <- "Os números são iguais."
    senao
    
        {* Se o primeiro número for maior, a mensagem é configurada de acordo *}
        se (iNumero1 > iNumero2) entao
            cMensagem <- "O número " + numpcarac(iNumero1) + " é maior."

        {* Se não, o segundo é o maior e a mensagem é configurada de acordo *}
        senao
            cMensagem <- "O número " + numpcarac(iNumero2) + " é maior."
        fimse
    fimse
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

fimalgoritmo
