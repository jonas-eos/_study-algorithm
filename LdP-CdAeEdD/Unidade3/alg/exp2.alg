{*
 * Calcula a área de um circulo de qualquer raio fornecido
 * Area de um Circulo = PI * raio ^ 2
 *}

 algoritmo "area_circulo"

    const
    
    var
        raio : real
        area : real

    inicio

        escreval("Informe o raio do circulo")
        leia(raio)

        area <- PI * exp(raio, 2)

        escreval("Aréa do valor fornecid é " + numpcarac(area))

    fimalgoritmo