{*
 * Programa         NegativoPositivo.alg
 * Descri�ao        Informa se o n�mero informado � positivo ou negativo
 *
 *
 * @pacote          ALP1/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/16/2019
 *}

{*----------------------------------------------------------------------------*}
algoritmo "NegativoPositivo"
{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         caracter Mensagem - Ser� configurado durante o alg
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
     * Recebe um n�mero pelo usu�rio
     *}
    escreva("Informe o n�mero: ")
    leia(iNumero)

    limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {* Se o n�mero for 0, � conseiderado neutro *}
    se(iNumero = 0) entao
        cMensagem <- "N�mero informado � neutro(0)."
    senao
        {* Se n�mero for maior que 0, positivo, mensagem configurada d acordo *}
        se (iNumero > 0) entao
            cMensagem <- "N�mero informado � positivo."

        {* Se n�o, o n�mero � negativo, mensagem configurada de acordo *}
        senao
            cMensagem <- "N�mero informado � negativo."
        fimse
    fimse
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)
    
fimalgoritmo
