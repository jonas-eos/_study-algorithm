{* Calcula o número inteiro mais próximo da raiz quadrada do número fornecido *}

algoritmo "exf3-2"
    
    var
        numero : inteiro
        contador : inteiro
        resultado : inteiro

    inicio

        resultado <- 0
        contador <- 0

        escreval("Informe um número")
        leia(numero)

        enquanto contador <= raizQuadrada faca

            contador <- exp(resultado, 2)
            resultado <- resultado + 1

        fimenquanto

        resultado <- resultado - 1

        escreval(numpcarac(resultado))

    fimalgoritmo