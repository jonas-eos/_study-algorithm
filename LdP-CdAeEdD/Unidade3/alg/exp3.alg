{* Inverte um número de 3 digitos
 * apresenta: unidade, dezena, centena
 *}

 algoritmo "inverte_numero"
    var
        numero : inteiro
        posicaoUnidade : inteiro
        posicaoDezena : inteiro
        posicaoCentena : inteiro
        numeroInvertido : inteiro
        unidade : caracter
        dezena : caracter
        centena : caracter
        numeroInvertidoCaracter : caracter

    inicio

        escreval("Informe um número de até 3 digitos:")
        leia(numero)
        
        posicaoUnidade <- compr(numpcarac(numero))
        posicaoDezena <- compr(numpcarac(numero)) - 1
        posicaoCentena <- compr(numpcarac(numero)) - 2

        unidade <- copia(numpcarac(numero), posicaoUnidade, 1)))
        dezena <- copia(numpcarac(numero), posicaoDezena, 1))
        centena <- copia(numpcarac(numero), posicaoCentena ,1))

        numeroInvertidoCaracter <- unidade
        numeroInvertidoCaracter <- numeroInvertidoCaracter + dezena
        numeroInvertidoCaracter <- numeroInvertidoCaracter + centena
        
        numeroInvertido <- caracpnum(numeroInvertidoCaracter)

        escreval("Número invertido: " + numpcarac(numeroInvertido))

    fimalgoritmo