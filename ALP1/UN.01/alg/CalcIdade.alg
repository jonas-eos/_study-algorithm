{*
 * Programa         CalcIdade.alg
 * Descri�ao        Calcular idade de acordo com o ano
 *
 *
 * @pacote          ALG1/UN.01
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/14/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "CalcIdade"

{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         inteiro Ano Atual - Ser� informado pelo usu�rio
 * @var         inteiro Ano Nascimento- Ser� informado pelo usu�rio
 * @var         inteiro Idade - Ser� calculado no alg
*}
var
    iAnoAtual, iAnoNascimento, iIdade : inteiro

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio

    {*
     * Entrada
     *
     * Ler dados do ano de nascimento e ano atual
     *}
     escreva("Informe o ano de nascimento: ")
     leia(iAnoNascimento)
     escreva("Informe o ano atual: ")
     leia(iAnoAtual)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {* Cacula o ano atual - ano nascimento para obter a idade do usu�rio *}
    iIdade <- iAnoAtual - iAnoNascimento

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva("Voc� tem ", iIdade, " anos")

Fimalgoritmo