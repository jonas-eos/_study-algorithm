{* Inverte um número de 3 digitos
 * apresenta: unidade, dezena, centena
 *}

 algoritmo "inverte_numero"

    var
        numero : inteiro
        unidade : inteiro
        dezena : inteiro
        centena : inteiro
        numeroInvertido : caracter


    inicio

        escreval("Informe um número de até 3 digitos:")
        leia(numero)

        unidade <- copia(numero, 1, 1)
        dezena <- copia(numero, 2, 1)
        centena <- copia(numero, 3, 1)

        numeroInvertido <- numpcarac(unidade)
        numeroInvertido <- numeroInvertido + numpcarac(dezena)
        numeroInvertido <- numeroInvertido + numpcarac(centena)

        escreval("Número invertido: " + numeroInvertido)

    fimalgoritmo