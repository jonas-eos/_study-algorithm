{*
 * Programa         CalcAumentoCargo.alg
 * Descriçao        Calcular o aumento de acordo com o código do cargo fornecido
 *                         E mostrar também o salário atual
 *
 * @pacote          ALG1/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/20/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "CalcAumentoCargo"

{*----------------------------------------------------------------------------*}

{*
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @const           CARGO_X - reprenseta a percentagem de aumento para cada carg
 * @var             caracter Cargo - onde será salvo o nome do cargo de acordo
 *                  com o codigo fornecido
 * @var             caracter MensagemX - Mensagem que será conf. durante o alg
 * @var             inteiro Codigo - Codigo do cargo que será fornecido pelo usr
 * @var             real Aumento - Calculado o aumento que receberá
 * @var             real Salario - O salário, fornecido pelo usuário e tambem
 *                  será calculado no final o salário total após o calculo do
 *                  aumento
*}
const
    CARGO_1 = 50
    CARGO_2 = 30
    CARGO_3 = 25
    CARGO_4 = 15

var
    cMensagem1, cMensagem2, cMensagem3 : caracter
    iCod : inteiro
    rAumento, rSalario : real


{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio

    {* Constructor *}
    cMensagem2 <- " "
    cMensagem3 <- " "

    {*------------------------------------------------------------------------*}

    {*
     * Entrada
     *
     * Será mostrado na tela o código correspondente ao cargo
     * Será lido o salário e o cargo do usuário
     *}
     escreva("Informe o salário atual R$: ")
     leia(rSalario)
     escreval("Código    -   Cargo")
     escreval("1         -   Serviços Gerais")
     escreval("2         -   Vigia")
     escreval("3         -   Recepcionista")
     escreval("4         -   Vendedor")
     escreval("----------------------------------")
     escreva("Informe o código do seu cargo: ")
     leia(iCod)

     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}

    escolha(iCod)
        caso 1
            rAumento <- rSalario * (CARGO_1 / 100)
            cMensagem1 <- "Serviços gerais."
        caso 2
            rAumento <- rSalario * (CARGO_2 / 100)
            cMensagem1 <- "Vigia."
        caso 3
            rAumento <- rSalario * (CARGO_3 / 100)
            cMensagem1 <- "Recepcionista"
        caso 4
            rAumento <- rSalario * (CARGO_4 / 100)
            cMensagem1 <- "Vendedor"
        outrocaso
            cMensagem1 <- "Nenhum cargo correspondente"
    fimescolha

    cMensagem2 <- "Seu aumento é:" + numpcarac(rAumento)
    cMensagem3 <- "Seu novo salário é:" + numpcarac(rSalario)

    {*------------------------------------------------------------------------*}

    {* Saida *}

    escreval(cMensagem1)
    escreval(cMensagem2)
    escreval(cMensagem3)

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

Fimalgoritmo
