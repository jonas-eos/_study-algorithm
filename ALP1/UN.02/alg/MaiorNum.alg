{*
 * Programa         MaiorNum.alg
 * Descri�ao        Entre dois valores fornecido, o alg informa qual o maior num
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
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         caracter Mensagem - Ser� construida durante o alg
 * @var         inteiro Numero<x> - Informado pelo usu�rio
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
     * Recebe os dois n�meros para compara��o
     *}
    escreva("Informe o primeiro n�mero ")
    leia(iNumero1)
    escreva("Informe o segundo n�mero ")
    leia(iNumero2)

    limpatela
    
    {*------------------------------------------------------------------------*}

    {* Processamento *}

    {* Compara e configura a mensagem caso os n�meros sejam iguais }*
    se(iNumero1 = iNumero2) entao
        cMensagem <- "Os n�meros s�o iguais."
    senao
    
        {* Se o primeiro n�mero for maior, a mensagem � configurada de acordo *}
        se (iNumero1 > iNumero2) entao
            cMensagem <- "O n�mero " + numpcarac(iNumero1) + " � maior."

        {* Se n�o, o segundo � o maior e a mensagem � configurada de acordo *}
        senao
            cMensagem <- "O n�mero " + numpcarac(iNumero2) + " � maior."
        fimse
    fimse
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

fimalgoritmo
