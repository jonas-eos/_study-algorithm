{*
 * Programa         CalcSalLiquido.alg
 * Descri�ao        Calcula o sal�rio liquido, sendo que o sal�rio bruto n�o se-
 *                  ja maior que o teto atual para o IR
 *
 *
 * @pacote          ALG1/UN.01
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/14/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "CalcSalLiquido"

{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @const           INSS - Valor estipulado de 11%
 * @const           Teto INSS - Valor estipulado de 1909.98
 * @var             real Salario Bruto - Fornecido pelo usu�rio
 * @var             real Salario Liquido - Ser� calculado no final do alg
 * @var             caracter Mensagem - Ser� construido durante o alg
 * @var             caracter cNome - Fornecido pelo usu�rio
*}
const
    INSS = 11
    TETO_IR = 1903.98
    
var
    rSalarioBruto, rSalarioLiquido : real
    cMensagem, cNome : caracter

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio
    {*
     * Entrada
     *
     * Informa o usu�rio qual o limite do sal�rio bruto deve ser informado para
     * que seja calculado o sal�rio liquido
     *}
     escreval("***************************************************************")
     escreval("* Aten��o, o algoritmo ir� calcular o sal�rio liquido apenas  *")
     escreva("* se o sal�rio estive at� o teto m�x para o IR que �:")
     escreval(TETO_IR, " *")
     escreval("***************************************************************")
     
     escreva("Informe seu nome: ")
     leia(cNome)
     escreval("Informe o sal�rio bruto R$: ")
     leia(rSalarioBruto)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Primeiro faz uma checagem se o sal�rio esta compat�vel com o requisito do
     * alg
     * Se o sal�rio bruto estiver compat�vel, o sal�rio liquido ser� calculado
     * O corpo da mensagem ser� prenchido de acordo com o evento
    *}
    se (rSalarioBruto > TETO_IR) entao
        cMensagem <- "Sal�rio maior que o teto atual do IR R$: "
        cMensagem <- cMensagem + numpcarac(TETO_IR)
    senao
        rSalarioLiquido <- (rSalarioBruto * (1 + (INSS / 100)))
        cMensagem <- cNome + " seu sal�rio liquido � R$:"
        cMensagem <- cMensagem + numpcarac(rSalarioLiquido)
    fimse

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

Fimalgoritmo