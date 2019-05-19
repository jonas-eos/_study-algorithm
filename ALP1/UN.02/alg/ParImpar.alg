{*
 * Programa         ParImpar.alg
 * Descriçao        Mostra se o número informado é par ou impar
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
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         caracter Mensagem - Será construido durante o alg
 * @var         inteiro Numero - Informado pelo usuário
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
     * Leitura do número pelo usuário
     *}
    escreva("Informe o número: ")
    leia(iNumero)

    limpatela
    
    
    {* Processamento *}
    {* Valida se número é divisivel por 2, e a mensagem será construida informa-
     * se é par ou impar, se divisível por 2 par, se não é um número impar
    *}
    se ((iNumero mod 2) = 0) entao
        cMensagem <- "Número par"
    senao
        cMensagem <- "Número impar"
    fimse
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

fimalgoritmo
