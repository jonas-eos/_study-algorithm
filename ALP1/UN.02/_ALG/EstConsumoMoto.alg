{*
 * Programa         EstConsumoMoto.alg
 * Descriçao        Calcula o consumo estimado do tipo de moto A B ou C dentro
                    de um percurso X KM fornecido pelo usuário
 *
 *
 * @pacote          ALGI/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/12/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "EstConsumoMoto"

{*----------------------------------------------------------------------------*}

{*
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @const           inteiro Tipo A - Valor fixo de consumo da moto tipo A
 * @const           inteiro Tipo B - Valor fixo de consumo da moto tipo B
 * @const           inteiro Tipo C - Valor fixo de consumo da moto tipo C
 * @var             caracter Mensagem - Mensagem será construida durante o alg.
 * @var             caracter Tipo da Moto - O tipo de moto, fornecido pelo usua.
 * @var             inteiro (iPercKm) = Percuso em KM - Fornecido pelo usuario
 * @var             real (rEstCons) = Estimativa de Consumo - Será calculado

*}
const
    TIPO_A = 26
    TIPO_B = 20
    TIPO_C = 7

var
    cMensagem, cTipoMoto : caracter
    iPercKm : inteiro
    rEstCons : real

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio

    {* Constructor *}

    {*------------------------------------------------------------------------*}

    {*
     * Entrada
     *
     * Descricao
     *}
     escreval("Informe o tipo da moto, sendo:")
     escreval("Tipo A(a): 26 km/l")
     escreval("Tipo B(b): 20 km/l")
     escreval("Tipo C(c):  7 Km/l")
     escreva("Seu tipo é: ")
     leia(cTipoMoto)
     escreva("Informe o percurso em KM: ")
     leia(iPercKm)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Verificará o tipo de moto escolhida
     * Caso não esteja dentro do grupo estipulado no programa
     * será prenchido a mensagem correspondente
     * O consumo é calculado pelo seguindo critério
     * Consumo = percurso / Consumo do tipo da moto escolhida
     * sendo o consumo do tipo da moto já está definida nas constantes
    *}
    escolha(cTipoMoto)
        caso "a", "A"
            rEstCons <- iPercKm / TIPO_A
            cMensagem <- "O consumo do tipo A será de " + numpcarac(rEstCons)
            cMensagem <- cMensagem + " l"
        caso "b", "B"
            rEstCons <- iPercKm / TIPO_B
            cMensagem <- "O consumo do tipo B será de " + numpcarac(rEstCons)
            cMensagem <- cMensagem + " l"
        caso "c", "C"
            rEstCons <- iPercKm / TIPO_C
            cMensagem <- "O consumo do tipo C será de " + numpcarac(rEstCons)
            cMensagem <- cMensagem + " l"
        outrocaso
            cMensagem <- "Tipo da moto informado é inválido!"
    fimescolha

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

Fimalgoritmo