{*
 * Programa         CalcIdade.alg
 * Descriçao        Calcular idade de acordo com o ano
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
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         inteiro Ano Atual - Será informado pelo usuário
 * @var         inteiro Ano Nascimento- Será informado pelo usuário
 * @var         inteiro Idade - Será calculado no alg
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
    
    {* Cacula o ano atual - ano nascimento para obter a idade do usuário *}
    iIdade <- iAnoAtual - iAnoNascimento

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva("Você tem ", iIdade, " anos")

Fimalgoritmo