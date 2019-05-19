{*
 * Programa         NegativoPositivo.alg
 * Descriçao        Informa se o número informado é positivo ou negativo
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
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         caracter Mensagem - Será configurado durante o alg
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
     * Recebe um número pelo usuário
     *}
    escreva("Informe o número: ")
    leia(iNumero)

    limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {* Se o número for 0, é conseiderado neutro *}
    se(iNumero = 0) entao
        cMensagem <- "Número informado é neutro(0)."
    senao
        {* Se número for maior que 0, positivo, mensagem configurada d acordo *}
        se (iNumero > 0) entao
            cMensagem <- "Número informado é positivo."

        {* Se não, o número é negativo, mensagem configurada de acordo *}
        senao
            cMensagem <- "Número informado é negativo."
        fimse
    fimse
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)
    
fimalgoritmo
