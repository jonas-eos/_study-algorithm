{*
 * Programa         CalcPesoIdeal.alg
 * Descri�ao        Calcular o peso ideal relacionado ao sexo e altura
 *
 *
 * @pacote          ALG1/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/12/2019
 *}

{*----------------------------------------------------------------------------*}
Algoritmo "CalcPesoIdeal"

{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @var         caracter Mensagem - Ser� prenchido de acordo com os eventos
 * @var         caracter Sexo - Fornecido pelo usu�rio
 * @var         inteiro Altura - Fornecido pelo usu�rio
 * @var         inteiro Peso - Sera calculado usando uma formula especifica
*}
var
    cMensagem, cSexo : caracter
    rAltura, rPeso : real

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
     escreva("Informe o sexo M(m) Masculino / F(f) Feminino: ")
     leia(cSexo)
     escreva("Informe sua altura: ")
     leia(rAltura)
     
     limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    
    {*
     * Primeiro sera analisado se o sexo informado esta dentro do solicitado
     * Se n�o estiver dentro do grupo M, m, F ,f a mensagem ser� preenchida com
     * com a informa��o que foi informado um valor inv�lido
     * Se estiver dentro do grupo permitido, ser� feito um calculo para o peso
     *}
     escolha(cSexo)
        caso "M", "m"
            {* Peso Masculuno = (72.7 * Altura) - 58) *}
            rPeso <- (72.7 * rAltura) - 58)
            cMensagem <- "Para sexo masculino " + numpcarac(rPeso) + " kg"
        caso "F", "f"
            {* Peso Feminino = (62.1 * Altura) - 44.7) *}
            rPeso <- (62.1 * rAltura) - 44.7)
            cMensagem <- "Para sexo feminino " + numpcarac(rPeso) + " kg"
        outrocaso
            cMensagem <- "Sexo informado n�o v�lido!"
            
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

    {*------------------------------------------------------------------------*}

    {* Destruidor *}

Fimalgoritmo