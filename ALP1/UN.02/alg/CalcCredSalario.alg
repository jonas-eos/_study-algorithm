{*
 * Programa         CalcCredSalario.alg
 * Descri�ao        Calcular o valor de cr�dito que pode ser concedido em base
 *                  do sal�rio informado
 *
 * @pacote          ALG1/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/12/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "CalcCredSalario"

{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @const           Credito A - Valor pre-estipulado de 35% (Sal > 500 <= 1000)
 * @const           Credito B - Valor pre-estipulado de 50% (Sal >1000 <= 3000)
 * @const           Credito C - Valor pre-estipulado de 75% (Sal > 3000)
 * @var             Caracter Mensagem - mensagem montada durante o alg
 * @var             real Salario - Fornecido pelo usuario
 * @var             real (rVlrCredito) Valor de Credito - Calculado no alg
*}
const
    CREDITO_A = 35
    CREDITO_B = 50
    CREDITO_C = 75

var
    cMensagem, cTipoCredito : caracter
    rSalario, rVlrCredito : real

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio

    {* Constructor *}

    {*------------------------------------------------------------------------*}

    {*
     * Entrada
     *
     * Captura o sal�rio fornecido pelo usu�rio
     *}
     escreva("Informe o sal�rio R$: ")
     leia(rSalario)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Em base aos crit�rios de cr�ditos, � analisado primeiro o sal�rio
     * em seguida � aplicado o calculo para deteminar o valor de cr�dito que po-
     * de ser disponibilizado
     *
     * Sem permiss�o:   -   Sal�rios abaixo de 500
     * Credito A:       -   Sal�rios entre 500 e 1000 reais
     * Credito B:       -   Sal�rio entre 1001 e 3000 reais
     * Credito C:       -   Sal�rio acima de 3000 reais
    *}

    {* Sem permiss�o de cr�dito *}
    se(rSalario < 500) entao
        cTipoCredito <- "N"
    fimse
    
    {* Credito A *}
    se((rSalario > 500) e (rSalario <= 1000)) entao
        cTipoCredito <- "A"
    fimse
    
    {* Credito B *}
    se((rSalario > 1000) e (rSalario <= 3000)) entao
        cTipoCredito <- "B"
    fimse
    
    {* Credito C *}
    se(rSalario > 3000) entao
        cTipoCredito <- "C"
    fimse
    
    {* Nesta estrutura � realizado o calculo de acordo com a clase salarial *}
    escolha(cTipoCredito)
        caso "A"
            rVlrCredito <- rSalario * (CREDITO_A / 100)
            cMensagem <- "Linha de cr�dito dispon�vel R$: "
            cMensagem <- cMensagem +  numpcarac(rVlrCredito)
        caso "B"
            rVlrCredito <- rSalario * (CREDITO_B / 100)
            cMensagem <- "Linha de cr�dito dispon�vel R$: "
            cMensagem <- cMensagem +  numpcarac(rVlrCredito)
        caso "C"
            rVlrCredito <- rSalario * (CREDITO_C / 100)
            cMensagem <- "Linha de cr�dito dispon�vel R$: "
            cMensagem <- cMensagem +  numpcarac(rVlrCredito)
        outrocaso
            cMensagem <- "N�o t�m direito a cr�dito!"
    fimescolha
    
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

Fimalgoritmo