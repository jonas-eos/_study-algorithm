{*
 * Programa         MediaPonderadaNota.alg
 * Descri�ao        Calcular a m�dia ponderada de 3 notas
 *
 *
 * @pacote          ALG1/UN.01
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/14/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "MediaPonderadaNota"

{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         inteiro Peso<x> - Peso da nota <x> fornecido pelo usu�rio
 * @var         real Nota<x> - Nota correspondente a <x> trimestre
 * @var         real Media - Ser� calculado durante o alg.
*}
var
    iPeso1, iPeso2, iPeso3 : inteiro
    rNota1, rNota2, rNota3, rMedia : real

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
Inicio

    {*
     * Entrada
     *
     * Realiza a leitura das notas e do peso de cada nota dos 3 trimestres
     *}
     escreva("Informe nota do primeiro trimestre: ")
     leia(rNota1)
     escreva("Informe o peso da nota do primeiro trimestre: ")
     leia(iPeso1)
     escreva("Informe nota do segundo trimestre: ")
     leia(rNota2)
     escreva("Informe o peso da nota do segundo trimestre: ")
     leia(iPeso2)
     escreva("Informe nota do terceiro trimestre: ")
     leia(rNota3)
     escreva("Informe o peso da nota do terceiro trimestre: ")
     leia(iPeso3)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Realiza o calculo da m�dia ponderada onde primeiro momento � calculado a
     * a soma das notas e seus respectivos pesos
     * No segundo momento � dividio a soma das notas e seus pesos pela soma dos
     * pesos
    *}
    rMedia <- ((iPeso1 * rNota1) + (iPeso2 * rNota2) + (iPeso3 * rNota3))
    rMedia <- (rMedia / (iPeso1 + iPeso2 + iPeso3))

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva("A sua m�dia ponderada �: ", rMedia)

Fimalgoritmo