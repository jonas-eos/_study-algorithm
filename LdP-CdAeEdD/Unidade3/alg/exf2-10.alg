{* Lê o peso e a altura de um adulto e calcula o IMC
 * IMC = peso / (altura)^2
 * Mostra a condição da pessoa em base ao IMC
 * < 18.5       -       abaixo do peso
 * > 18.5 < 25  -       peso normal
 * > 25 < 30    -       acima do peso
 * > 30         -       obeso
 *}

 algoritmo "exf2-10"

    const
        PESO_ABAIXO = 18.5
        PESO_NORMAL = 18.5
        PESO_ACIMA = 25
        OBESO = 30

    var
        peso : real
        altura : real
        imc : real

    inicio

        escreval("Informe o peso")
        leia(peso)

        escreval("Informe a altura")
        leia(altura)

        imc <- ((peso / (exp(altura, 2))))

        se (imc < PESO_NORMAL) entao

            escreval("Abaixo do peso")

        fimse

        se ((imc > PESO_ABAIXO) e (imc < PESO_ACIMA)) entao

            escreval("Peso normal")

        fimse

        se ((imc > PESO_ACIMA) e (imc < OBESO)) entao

            escreval("Acima do peso")

        fimse

        se (imc > OBESO) entao
        
            escreval("Obeso")

        fimse

    fimalgoritmo
