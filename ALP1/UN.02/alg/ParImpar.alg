{*
 * Programa         ParImpar.alg
 * Descri�ao        Mostra se o n�mero informado � par ou impar
 *
 *
 * @pacote          ALP1/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/16/2019
 *}

{*----------------------------------------------------------------------------*}
algoritmo "ParImpar"

{*----------------------------------------------------------------------------*}
{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         caracter Mensagem - Ser� construido durante o alg
 * @var         inteiro Numero - Informado pelo usu�rio
*}
var
    cMensagem : caracter
    iNumero : inteiro
{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
inicio

    {*
     * Entrada
     *
     * Leitura do n�mero pelo usu�rio
     *}
    escreva("Informe o n�mero: ")
    leia(iNumero)

    limpatela
    
    
    {* Processamento *}
    {* Valida se n�mero � divisivel por 2, e a mensagem ser� construida informa-
     * se � par ou impar, se divis�vel por 2 par, se n�o � um n�mero impar
    *}
    se ((iNumero mod 2) = 0) entao
        cMensagem <- "N�mero par"
    senao
        cMensagem <- "N�mero impar"
    fimse
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

fimalgoritmo
