{* 
 *Informa o signo correspondente ao mês informado
*}

algoritmo "signo_zodiaco"

    const
        JANEIRO = 1
        FEVEREIRO = 2
        MARCO = 3
        ABRIL = 4
        MAIO = 5
        JUNHO = 6
        JULHO = 7
        AGOSTO = 8
        SETEMBRO = 9
        OUTUBRO = 10
        NOVEMBRO = 11
        DEZEMBRO = 12

    var
        dia : inteiro
        mes : inteiro

    inicio

        escreval("Informe o dia: ")
        leia(dia)

        escreval("Informe o mês: ")
        leia(mes)

        escreva("Seu signo: ")

        escolha(mes)

            caso JANEIRO

                se (dia > 20) entao

                    escreval("Aquário")

                senao

                    escreval("Capricôrnio")

                fimse

            caso FEVEREIRO

                se (dia > 18) entao

                    escreval("Peixes")

                senao

                    escreval("Aquário")

                fimse

            caso MARCO

                se (dia > 20) entao

                    escreval("Áries")

                senao

                    escreval("Peixes")

                fimse

            caso ABRIL

                se (dia > 20) entao

                    escreval("Touro")

                senao

                    escreval("Áries")

                fimse

            caso MAIO

                se (dia > 20) entao

                    escreval("Gêmeos")

                senao

                    escreval("Touro")

                fimse

            caso JUNHO

                se (dia > 20) entao

                    escreval("Câncer")

                senao

                    escreval("Gêmeos")

                fimse

            caso JULHO

                se (dia > 22) entao

                    escreval("Leão")

                senao

                    escreval("Câncer")

                fimse

            caso AGOSTO

                se (dia > 22) entao

                    escreval("Virgem")

                senao

                    escreval("Leão")

                fimse

            caso SETEMBRO

                se (dia > 22) entao

                    escreval("Libra")

                senao

                    escreval("Virgem")

                fimse

            caso OUTUBRO

                se (dia > 22) entao

                    escreval("Escorpião")

                senao

                    escreval("Libra")

                fimse

            caso NOVEMBRO

                se (dia > 21) entao

                    escreval("Sagitário")

                senao

                    escreval("Escorpião")

                fimse

            caso DEZEMBRO

            se (dia > 21) entao

                    escreval("Capricôrnio")

                senao

                    escreval("Sagitário")

                fimse
            
            outrocaso
            
                limpatela
                escreval("Mês inválido")

        fimescolha

    fimalgoritmo