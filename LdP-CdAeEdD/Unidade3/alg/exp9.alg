{* 
 *Informa o signo correspondente ao m�s informado
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

        escreval("Informe o m�s: ")
        leia(mes)

        escreva("Seu signo: ")

        escolha(mes)

            caso JANEIRO

                se (dia > 20) entao

                    escreval("Aqu�rio")

                senao

                    escreval("Capric�rnio")

                fimse

            caso FEVEREIRO

                se (dia > 18) entao

                    escreval("Peixes")

                senao

                    escreval("Aqu�rio")

                fimse

            caso MARCO

                se (dia > 20) entao

                    escreval("�ries")

                senao

                    escreval("Peixes")

                fimse

            caso ABRIL

                se (dia > 20) entao

                    escreval("Touro")

                senao

                    escreval("�ries")

                fimse

            caso MAIO

                se (dia > 20) entao

                    escreval("G�meos")

                senao

                    escreval("Touro")

                fimse

            caso JUNHO

                se (dia > 20) entao

                    escreval("C�ncer")

                senao

                    escreval("G�meos")

                fimse

            caso JULHO

                se (dia > 22) entao

                    escreval("Le�o")

                senao

                    escreval("C�ncer")

                fimse

            caso AGOSTO

                se (dia > 22) entao

                    escreval("Virgem")

                senao

                    escreval("Le�o")

                fimse

            caso SETEMBRO

                se (dia > 22) entao

                    escreval("Libra")

                senao

                    escreval("Virgem")

                fimse

            caso OUTUBRO

                se (dia > 22) entao

                    escreval("Escorpi�o")

                senao

                    escreval("Libra")

                fimse

            caso NOVEMBRO

                se (dia > 21) entao

                    escreval("Sagit�rio")

                senao

                    escreval("Escorpi�o")

                fimse

            caso DEZEMBRO

            se (dia > 21) entao

                    escreval("Capric�rnio")

                senao

                    escreval("Sagit�rio")

                fimse
            
            outrocaso
            
                limpatela
                escreval("M�s inv�lido")

        fimescolha

    fimalgoritmo