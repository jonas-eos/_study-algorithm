{*
 * Programa         EquacaoSegundoGrau.alg
 * Descrição        Resolver equação de segundo grau (ax² + bx +c)
 *
 *
 * @pacote      ALP2/UN.02
 * @autor       Jonas Evangelista (jonas.eos@outlook.com)
 * @desde      05/20/2019
 * @versao      1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "EquacaoSegundoGrau"

{*----------------------------------------------------------------------------*}

{*
 * Cabeçalho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         caracter Mensagem - Será configurada durante o Programa
 * @var         real r<x> - x varia entre A, B, C: concientes da Equação
 * @var         real rX<n> - n varia ao resultado de X1 e X2
 *@var          real rDelta - Armazenar resultado de delta
*}
var
    cMensagem : caracter
    rA, rB, rC, rDelta, rX1, rX2 : real

{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
inicio
    {*
    * Entrada
    *
    * Leitura do coneciente A B e C
  *}
    escreval("----------------------------------------------------------------")
    escreval("ax² X bx X c")
    escreval("Equação de segundo grau!")
    escreval("Importante: para o cociente a não pode ser 0")
    escreval("----------------------------------------------------------------")
    escreval("Informe o valor de a: ")
    leia(rA)
    escreva("Informe o valor de b: ")
    leia(rB)
    escreva("Informe o valor de c: ")
    leia(rc)

    limpatela
    {*------------------------------------------------------------------------*}

    {* Processamento *}

    {* Valida se coneciente A é válido, se for válido, no bloco senao já calcla o delta *}
    se (rA = 0) entao
        cMensagem <- "a não pode ser igual á 0."
    senao
        rDelta <- (exp(rB, 2) - 4 * rA * rC)            {* Delta = b² - 4ac*}

        {* Valida se delta é negativo (raiz não real); Delta = 0 (1 raiz) delta > 0 (raix x1 e x2) *}
        se (rDelta < 0) entao
            cMensagem <-"Não existe raiz real, pois delta é negativo."
        senao

            se (rDelta = 0) entao
                rX1 <- ((-rB) / (2 * rA))
                cMensagem <- "Raiz ũnica x = " + numpcarac(rX1)
            senao

                rX1 <- (((-rB) + raizq(rDelta)) / (2 * rA))
                rX2 <- (((-rB) - raizq(rDelta)) / (2 * rA))
                cMensagem <- "x' = " + numpcarac(rX1)
                cMensagem <-  cMensagem + " x'' = " + numpcarac(rX2)

            fimse
        fimse
    fimse

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

fimalgoritmo
