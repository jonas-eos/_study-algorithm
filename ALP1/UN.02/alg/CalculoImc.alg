{*
 * Programa         CalculoImc.alg
 * Descri��o        Calcular o IMC
 *
 *
 * @pacote          ALP1/UN.02
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/19/2019
 *----------------------------------------------------------------------------*}
algoritmo "CalculoImc"
{*----------------------------------------------------------------------------*}

{*
 * Cabe�alho e prototipos de procedures e functions
 * Tipo: Variaveis / constante / includes / definitions / functions / procedures
 *
 * @const           Peso abaixo - IMC m�nimo, abaixo � considerado abaixo do pes
 * @const           Peso excesso - IMC limite para excesso de peso
 * @const           Peso normal - IMC maximo para ser considerado na media
 * @var             caracter Mensagem - ser� configurada durante o alg
 * @var             real Altura - Fornecida pelo usu�rio
 * @var             real IMC - Calculado durante o Alg
 * @var             real Peso - Fornecido pelo usu�rio
*}

const
    PESO_ABAIXO = 20
    PESO_EXCESSO = 30
    PESO_NORMAL = 25

var
    cMensagem : caracter
    rAltura, rImc, rPeso : real
{*----------------------------------------------------------------------------*}

{* Funcao Inicio *}
inicio
    {*
     * Entrada
     *
     * Captura peso e altura do usu�rio
    *}
    escreva("Informe o peso: ")
    leia(rPeso)
    escreva("Informe a altura: ")
    leia(rAltura)

    limpatela
    {*------------------------------------------------------------------------*}

    {* Processamento *}

    {* Se estiver informado valores nulo o calculo � inv�lidado *}
    se((rPeso <= 0.0) ou (rAltura <= 0.0)) entao
        cMensagem <- "Valor informado inválido."
    senao
        {* Se os valores estiverem validos, imc � calado *}
        rImc <- ((rPeso) /  (exp(rAltura,2)))

        {* Bloco para pessoas abaixo da m�dia *}
        se(rImc < PESO_ABAIXO) entao
            cMensagem <- "Abaixo do peso."
        senao
        
            {* Bloco para pessoas na m�dia *}
            se((rImc >= PESO_ABAIXO) e (rImc <= PESO_NORMAL)) entao
                cMensagem <- "Normal."
            senao

                {* Bloco para pessoas acima do peso *}
                se((rImc > PESO_NORMAL) e (rImc <= PESO_EXCESSO)) entao
                    cMensagem <- "Excesso de Peso"

                {* Ultimo bloco para obesidade morbida *}
                senao
                    cMensagem <- "Obesidade morbida."
                fimse
            fimse
        fimse
    fimse
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(cMensagem)

fimalgoritmo
