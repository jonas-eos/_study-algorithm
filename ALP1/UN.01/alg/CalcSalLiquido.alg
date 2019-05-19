{*
 * Programa         CalcSalLiquido.alg
 * Descriçao        Calcula o salário liquido, sendo que o salário bruto não se-
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
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @const           INSS - Valor estipulado de 11%
 * @const           Teto INSS - Valor estipulado de 1909.98
 * @var             real Salario Bruto - Fornecido pelo usuário
 * @var             real Salario Liquido - Será calculado no final do alg
 * @var             caracter Mensagem - Será construido durante o alg
 * @var             caracter cNome - Fornecido pelo usuário
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
     * Informa o usuário qual o limite do salário bruto deve ser informado para
     * que seja calculado o salário liquido
     *}
     escreval("***************************************************************")
     escreval("* Atenção, o algoritmo irá calcular o salário liquido apenas  *")
     escreva("* se o salário estive até o teto máx para o IR que é:")
     escreval(TETO_IR, " *")
     escreval("***************************************************************")
     
     escreva("Informe seu nome: ")
     leia(cNome)
     escreval("Informe o salário bruto R$: ")
     leia(rSalarioBruto)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Primeiro faz uma checagem se o salário esta compatível com o requisito do
     * alg
     * Se o salário bruto estiver compatível, o salário liquido será calculado
     * O corpo da mensagem será prenchido de acordo com o evento
    *}
    se (rSalarioBruto > TETO_IR) entao
        cMensagem <- "Salário maior que o teto atual do IR R$: "
        cMensagem <- cMensagem + numpcarac(TETO_IR)
    senao
        rSalarioLiquido <- (rSalarioBruto * (1 + (INSS / 100)))
        cMensagem <- cNome + " seu salário liquido é R$:"
        cMensagem <- cMensagem + numpcarac(rSalarioLiquido)
    fimse

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

Fimalgoritmo