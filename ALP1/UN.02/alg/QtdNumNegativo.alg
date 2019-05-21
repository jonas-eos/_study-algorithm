{*
 * Programa         QtdNumNegativo.alg
 * Descriçao        Mostrar a quantidade de números que são negativos
 *
 *
 * @pacote          ALP1/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/12/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "QtdNumNegativo"

{*----------------------------------------------------------------------------*}

{*
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         Inteiro Contador - será usado como contados dos núm negativos
 * @var         Inteiro Numero<x> - Dados fornecidos pelo usuário
*}
var
    iContador, iNumero1, iNumero2, iNumero3, iNumero4, iNumero5 : inteiro

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio

    {* Constructor *}
    
    iContador <- 0          {* Iniciando a variavel *}

    {*------------------------------------------------------------------------*}

    {*
     * Entrada
     *
     * Será solicitado ao usuário para informar os 5 números
     *}
     escreva("Informe o primeiro número: ")
     leia(iNumero1)
     escreva("Informe o segundo número: ")
     leia(iNumero2)
     escreva("Informe o terceiro número: ")
     leia(iNumero3)
     escreva("Informe o quarto número: ")
     leia(iNumero4)
     escreva("Informe o quinto número: ")
     leia(iNumero5)
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Será pecorrido entre o iNumero 1 ao 5 em busca dos negativos
     * aqueles com valor negativo será acrescentado +1 no contador
    *}
    se (iNumero1 < 0) entao
        iContador <- iContador + 1
    fimse
    
    se (iNumero2 < 0) entao
        iContador <- iContador + 1
    fimse
    
    se (iNumero3 < 0) entao
        iContador <- iContador + 1
    fimse
    
    se (iNumero4 < 0) entao
        iContador <- iContador + 1
    fimse
    
    se (iNumero5 < 0) entao
        iContador <- iContador + 1
    fimse

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva("Dentro dos números informados, ", iContador , " são negativos")

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

Fimalgoritmo


{*----------------------------------------------------------------------------*}

{* Implantaçao das Functions *}

{*
 * (_functionTemplate) - Template de fumçao
 * Descrição
 *
 * @tipo
 * @pacote
 * @categoria
 * @autor
 * @link
 *
 * @acesso
 * @param[in]
 * @param[out]
 * @return
 * @implementacao
*}

    {* Constructor *}

    {*------------------------------------------------------------------------*}

    {*
     * Entrada
     *
     * Descricao
     *}

    {*------------------------------------------------------------------------*}

    {* Processamento *}

    {*------------------------------------------------------------------------*}

    {* Saida *}

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

{*----------------------------------------------------------------------------*}

{* Implantação dos Procedures *}

{*
 * (_procedureTemplate) - Template de procedimento
 * Descricao
 *
 * @tipo
 * @pacote
 * @categoria
 * @autor
 * @link
 *
 * @acesso
 * @param[in]
 * @param[out]
 * @implementacao
*}

    {* Constructor *}

    {*------------------------------------------------------------------------*}

    {*
     * Entrada
     *
     * Descricao
     *}

    {*------------------------------------------------------------------------*}

    {* Processamento *}

    {*------------------------------------------------------------------------*}

    {* Saida *}

    {*------------------------------------------------------------------------*}

    {* Destruidor *}