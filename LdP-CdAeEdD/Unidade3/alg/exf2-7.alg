{*
 * Lê idade de um nadador
 * Classifica em uma das categorias
 * 5 até 7 anos            -        Infantil A
 * 8 até 10 anos           -        Infantil B
 * 11 até 13 anos          -        Juvenil A
 * 14 até 17 anos          -        Juvenil B
 * Maiores de 18 anos      -        Adulto
 *}

 algoritmo "exf2-7"
    var
        idade : inteiro

    inicio

        escreval("Informe a idade do nadador:")
        leia(idade)

        se ((idade >= 5) e (idade <= 7)) entao

            escreval("Infantil A")

        fimse

        se ((idade >= 8) e (idade <= 10)) entao

            escreval("Infantil B")

        fimse

        se ((idade >= 11) e (idade <= 13)) entao

            escreval("Juvenil A")

        fimse

        se ((idade >= 14) e (idade <= 17)) entao

            escreval("Juvenil B")

        fimse

        se ((idade >=18)) entao

            escreval("Adulto")

        fimse

    fimalgoritmo

