{* Calcula o n�mero inteiro mais pr�ximo da raiz quadrada do n�mero fornecido *}

algoritmo "exf3-2"
    
    var
        numero : inteiro
        contador : inteiro
        resultado : inteiro

    inicio

        resultado <- 0
        contador <- 0

        escreval("Informe um n�mero")
        leia(numero)

        enquanto (contador < numero) faca

            contador <- resultado * resultado
            resultado <- resultado + 1

        fimenquanto

        resultado <- resultado - 1

        escreval(numpcarac(resultado))

    fimalgoritmo