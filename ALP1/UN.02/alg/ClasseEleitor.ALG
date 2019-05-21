{*
 * Programa         ClasseEleitor.alg
 * Descriçao        Informar a classe do eleitor
 *
 *
 * @pacote          ALP1/UN.01
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/16/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "ClasseEleitor"

{*----------------------------------------------------------------------------*}

{*
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @const           IDADE_<x> - Idade de cada classe pre-definida
 * @const           CLASSE_<x> - Tipo da classe pre-definida
 * @var             char* Mensagem - Será montada durante o programa
 * @var             int Idade - Será informado pelo usuário
*}
const
    IDADE_1 = 16
    IDADE_2 = 18
    IDADE_3 = 65

    CLASSE_1 = "Não eleitor!
    CLASSE_2 = "Eleitor obrigatório!"
    CLASSE_3 = "Eleitor facultativo!"

var
    cMensagem : caracter
    iIdade : inteiro

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio

    {*
     * Entrada
     *
     * Capturar a idade
     *}
     escreva("Informe a idade: ")
     leia(iIdade)

     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}

    {* Para menores de 16 anos *}
    se(iIdade < IDADE_1) entao
        cMensagem <- CLASSE_1
    senao

        {* Entre 18 anos e 65 anos *}
        se((iIdade >= IDADE_2) e (iIdade <= IDADE_3)) entao
            cMensagem <- CLASSE_2

        {* Entre 16 e 18 anos e para maiores de 65 anos *}
        senao
            cMensagem <- CLASSE_3
        fimse
    fimse

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

Fimalgoritmo
