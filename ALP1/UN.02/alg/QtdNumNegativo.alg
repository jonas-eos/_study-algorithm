{*
 * Programa         QtdNumNegativo.alg
 * Descri�ao        Mostrar a quantidade de n�meros que s�o negativos
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
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         Inteiro Contador - ser� usado como contados dos n�m negativos
 * @var         Inteiro Numero<x> - Dados fornecidos pelo usu�rio
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
     * Ser� solicitado ao usu�rio para informar os 5 n�meros
     *}
     escreva("Informe o primeiro n�mero: ")
     leia(iNumero1)
     escreva("Informe o segundo n�mero: ")
     leia(iNumero2)
     escreva("Informe o terceiro n�mero: ")
     leia(iNumero3)
     escreva("Informe o quarto n�mero: ")
     leia(iNumero4)
     escreva("Informe o quinto n�mero: ")
     leia(iNumero5)
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Ser� pecorrido entre o iNumero 1 ao 5 em busca dos negativos
     * aqueles com valor negativo ser� acrescentado +1 no contador
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
    escreva("Dentro dos n�meros informados, ", iContador , " s�o negativos")

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

Fimalgoritmo


{*----------------------------------------------------------------------------*}

{* Implanta�ao das Functions *}

{*
 * (_functionTemplate) - Template de fum�ao
 * Descri��o
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

{* Implanta��o dos Procedures *}

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