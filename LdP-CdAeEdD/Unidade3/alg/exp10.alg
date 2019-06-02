{* 
 * Informa a classe eleitoral de acordo com a idade inforamda
 * < 16 não votam
 * > 18 < 65 eleitor obrigatório
 * > 16 < 18 > 65 eleitor facultativo
 *}

 algoritmo "classe_eleitoral"

    const
        NAO_VOTAM = 15
        ELEITOR_OBRIGATORIO = 18
        ELEITOR_FACULTATIVO = 66

    var
        idade : inteiro

    inicio

        escreval("Informe sua idade:")
        leia(idade)

        se (idade <= NAO_VOTAM) entao

            escreval("Não votante.")

        senao

            se ((idade > ELEITOR_OBRIGATORIO) e (idade < ELEITOR_FACULTATIVO)) entao

                escreval("Eleitor obrigatório.")

            senao

                escreval("Eleitor facultativo.")

            fimse

        fimse

    fimalgoritmo