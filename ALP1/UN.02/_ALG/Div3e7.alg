{*
 * Programa     Div3e7.alg
 * Descriçao    Informa se um determinado número é divisivel por 3 e por 7
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
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         Inteiro Numero - Será informado pelo usuário
 * @var         caracter Mensagem - Mensagem se é divisivel por 7 ou não
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
     
     escreva("Informe o número: ")
     leia(iNumero)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Analisa se o número é divisivel por 3 e 7
     * Será salvo uma mensagem informado se é ou não divisível por ambos
    *}
    se ((iNumero mod 7 = 0) e (iNumero mod 3 = 0)) entao
    
        cMensagem <- "O número " + numpcarac(iNumero) + " é divisível por 3 e 7"
    senao

        cMensagem <- "O número " + numpcarac(iNumero)
        cMensagem <- cMensagem + " não é divisível por 3 e 7"
    fimse


    {*------------------------------------------------------------------------*}

    {* Saida *}
    
    escreva(cMensagem)

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

Fimalgoritmo