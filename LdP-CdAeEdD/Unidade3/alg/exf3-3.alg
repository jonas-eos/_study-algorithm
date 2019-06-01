{*
 * Verifica se o número informado é primo ou não
*}

algoritmo "exf3-3"
    const
        NUMERO_INICIAL = 2

    var
        numero : inteiro
        contador : inteiro
        divisor : inteiro

    inicio

        divisor = NUMERO_INICIAL
        contador = 0

        escreval("Informe o número:")
        leia(numero)

        enquanto (divisor mod numero <> 0) e (contador < 1) faca
            
            divisor <- divisor + 1
            contador <- contador + 1

        fimenquanto

        se(contador == 1) entao

            escreval("Número primo")

        senao

            escreval("Não é número primo")
            
        fimse
    fimalgoritmo