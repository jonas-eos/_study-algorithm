algoritmo <calcularImc>

var
    mensagem, sexo : caracter
    algura, imc : real

inicio

    escreva("-----------------------------------------------------------------")
    escreva("| Entrada       -        sexo      |")
    escreva("|      F        -        Feminino  |")
    escreva("|      M        -        Masculino |")
    escreva("-----------------------------------------------------------------")
    escreva("Informe a letra do sexo indicado: ")
    leia(sexo)
    escreva("Informe a altura: ")
    leia(altura)

    limpatela

    se ((sexo != 'f') ou (sexo != 'm')) entao
        mensagem <- "Sexo inválido."
    senao
        mensagem <- "IMC " + sexo + " = "

        se (sexo = 'f') entao
            imc <- (62.1 * altura) - 44.7
        senao
            imc <- (72.7 * altura) - 58
        fimse
    fimse

    mensagem <- mensagem + numpcarac(imc)

    escreva(mensagem)
fimalgoritmo
