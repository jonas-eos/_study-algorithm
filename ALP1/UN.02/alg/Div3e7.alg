{*
 * Programa     Div3e7.alg
 * Descri�ao    Informa se um determinado n�mero � divisivel por 3 e por 7
 *
 *
 * @pacote      ALG1/UN.02
 * @autor       Jonas Evangelista (jonas.eos@outlook.com)
 * @desde       05/12/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "Div3e7"

{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         Inteiro Numero - Ser� informado pelo usu�rio
 * @var         caracter Mensagem - Mensagem se � divisivel por 7 ou n�o
*}
var

    iNumero : inteiro
    cMensagem : caracter

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio

    {* Constructor *}

    {*------------------------------------------------------------------------*}

    {*
     * Entrada
     *
     * Descricao
     *}
     
     escreva("Informe o n�mero: ")
     leia(iNumero)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Analisa se o n�mero � divisivel por 3 e 7
     * Ser� salvo uma mensagem informado se � ou n�o divis�vel por ambos
    *}
    se ((iNumero mod 7 = 0) e (iNumero mod 3 = 0)) entao
    
        cMensagem <- "O n�mero " + numpcarac(iNumero) + " � divis�vel por 3 e 7"
    senao

        cMensagem <- "O n�mero " + numpcarac(iNumero)
        cMensagem <- cMensagem + " n�o � divis�vel por 3 e 7"
    fimse


    {*------------------------------------------------------------------------*}

    {* Saida *}
    
    escreva(cMensagem)

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

Fimalgoritmo