{* Ler m�s
 * apresentar o m�s por extenso
 *}

 algoritmo "mes_por_extenso"

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
        mes : inteiro
        mesPorExtenso : caracter

    inicio

        escreva("Informe o m�s ")
        leia(mes)

        escolha(mes)

            caso JANEIRO

                mesPorExtenso <- "Janeiro"

            caso FEVEREIRO

                mesPorExtenso <- "Fevereiro"

            caso MARCO

                mesPorExtenso <- "Mar�o"

            caso ABRIL
                
                mesPorExtenso <- "Abril"

            caso MAIO
            
                mesPorExtenso <- "Maio"

            caso JUNHO
            
                mesPorExtenso <- "Junho"

            caso JULHO
            
                mesPorExtenso <- "Julho"

            caso AGOSTO
            
                mesPorExtenso <- "Agosto"

            caso SETEMBRO
            
                mesPorExtenso <- "Setembro"

            caso OUTUBRO
            
                mesPorExtenso <- "Outubro"

            caso NOVEMBRO
            
                mesPorExtenso <- "Novembro"

            caso DEZEMBRO
            
                mesPorExtenso <- "Dezembro"

            outrocaso

                mesPorExtenso <- "M�s inv�lido"
            
        fimescolha

        escreval(mesPorExtenso)
        
    fimalgoritmo