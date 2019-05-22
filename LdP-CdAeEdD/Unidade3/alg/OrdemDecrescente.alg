algoritmo "OrdemDecrescente"

var
    mensagem : caracter
    valor1, valor2, valor3, valor4 : inteiro
    menorValor, valorDoMeio, maiorValor : inteiro

inicio

    escreva("Informe o primeiro valor")
    leia(valor1)
    escreva("Informe o segundo valor")
    leia(valor2)
    escreva("Informe o terceiro valor")
    leia(valor3)

    limpatela

    se ((valor1 = valor2) ou (valor2 = valor3) ou (valor1 = valor3)) entao
        mensagem <- "Existe valor igual."
    senao
        se (valor2 < valor1) entao
            se (valor3 < valor2) entao
                menorValor <- valor3
                valorDoMeio <- valor2
                maiorValor <- valor1
            senao
                menorValor <- valor2
                se (valor3 < valor1) entao
                    valorDoMeio <- valor3
                    maiorValor <- valor1
                senao
                    valorDoMeio <- valor1
                    maiorValor <- valor3
                fimse
            fimse
        senao
            se (valor3 < valor1) entao
                menorValor <- valor3
                valorDoMeio <- valor1
                maiorValor <- valor2
            senao
                menorValor <- valor1
                se (valor3 < valor2) entao
                    valorDoMeio <- valor3
                    maiorValor <- valor2
                senao
                    valorDoMeio <- valor2
                    maiorValor <- valor3
                fimse
            fimse
        fimse
        mensagem <- "Menor " + numpcarac(menorValor)
        mensagem <- mensagem + " do meio " + numpcarac(valorDoMeio)
        mensagem <- mensagem + " maior valor " + numpcarac(maiorValor)
    fimse
    escreva(mensagem)
fimalgoritmo
