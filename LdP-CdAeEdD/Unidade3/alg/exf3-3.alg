{*
 * Verifica se o n�mero informado � primo ou n�o
*}

algoritmo "exf3-3"
    const
        NUMERO_INICIAL = 2

    var
        numero : inteiro
        contador : inteiro
        divisor : inteiro

    inicio

        contador <- 0

        escreval("Informe o n�mero:")
        leia(numero)
        
        para divisor de NUMERO_INICIAL ate numero passo 1 faca
        
            se (numero mod divisor = 0) entao
            
                contador <- contador + 1
                
            fimse
            
            divisor <- divisor + 1
            
        fimpara

        se(contador = 1) entao

            escreval("N�mero primo")

        senao

            escreval("N�o � n�mero primo")
            
        fimse
    fimalgoritmo