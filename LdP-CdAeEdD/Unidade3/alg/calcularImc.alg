{*
 * Descrição            Calcular o IMC
 *
 *
 * @pacote              LdP-CdAeEdD\Unidade3
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/22/2019
 * @ver                 v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "calcularImc"
const
    MASCULINO = "m"
    FEMININO = "f"

var
    mensagem, sexo : caracter
    altura, imc : real

inicio

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    escreval("----------------------------------------------------------------")
    escreval("| Entrada       -        sexo      |")
    escreval("|      F        -        Feminino  |")
    escreval("|      M        -        Masculino |")
    escreval("----------------------------------------------------------------")
    
    escreva("Informe a letra do sexo indicado: ")
    leia(sexo)
    escreva("Informe a altura: ")
    leia(altura)

    limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}
    se ((minusc(sexo) <> FEMININO) e (minusc(sexo) <> MASCULINO)) entao
    
        mensagem <- "Sexo inválido."
        
    senao
    
        mensagem <- "IMC " + sexo + " = "

        se (minusc(sexo) = FEMININO) entao
        
            imc <- (62.1 * altura) - 44.7
            
        senao
        
            imc <- (72.7 * altura) - 58
            
        fimse
        
        mensagem <- mensagem + numpcarac(imc)
        
    fimse
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva(mensagem)

    
fimalgoritmo