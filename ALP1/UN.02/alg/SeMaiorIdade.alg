{*
 * Programa         SeMaiorIdade.alg
 * Descri��o
 *
 *
 * @pacote          ALP1/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/19/2019
 *----------------------------------------------------------------------------*}
algoritmo "SeMaiorIdade"

{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @Const           MSG_PADRAO - Mensagem padrao para compor mensagem final
 * @const           MAIOR_IDADE - Idade considerado como de maior
 * @const           IDOSO - Idade considerada terceira idade
 * @var             Caracter - Mensagem - Ser� construindo durante o alg
 * @var             Caracter - Nome - Informado pelo us�rio
 * @var             Inteiro - Idade - Informado pelo usu�rio
*}

const
    IDOSO = 65
    MSG_PADRAO = "de idade."
    MAIOR_IDADE = 18
var
    cMensagem, cNome : caracter
    iIdade : inteiro
{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
inicio
    {*
     * Entrada
     *
     * Capturar dados do usu�rio
    *}
    escreva("Informe o nome: ")
    leia(cNome)
    escreva("Idade: ")
    leia(iIdade)

    limpatela()
    {*------------------------------------------------------------------------*}

    {* Processamento *}
    se (iIdade < 0) entao
        cMensagem <- "Inv�lido!"
    senao
        se (iIdade  < MAIOR_IDADE) entao
            cMensagem <- "Menor " + MSG_PADRAO
        senao
            se ((iIdade >= MAIOR_IDADE) e (iIdade <= IDOSO)) entao
                cMensagem <- "Maior "+ MSG_PADRAO
            senao
                cMensagem <- "Idoso."
            fimse
        fimse
    fimse
    
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

fimalgoritmo
