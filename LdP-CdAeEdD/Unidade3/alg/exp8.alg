{* Ler dia, mês, ano
 * Validar se tem uma data válida
 *}

 algoritmo "validar_data"
    
    const
        MES_30 = 30
        MES_31 = 31
        FEVEREIRO = 28
        FEVEREIRO_BISEXTO = 29

    var
        dia : inteiro
        mes : inteiro
        ano : inteiro
        ehAnoBisexto : logico

    inicio

        
        escreval("Informe o dia")
        leia(dia)

        escreval("Informe o mês)
        leia(mes)

        escreval("Informe o ano)
        leia(ano)

        se ((mes > 0) e (mes < 13)) entao

            escolha (mes)

                caso 4, 6, 9, 11

                    se (dia > 1) e (dia < MES_30) entao
                        
                        escreval ("Data válida")

                    senao
                        
                        escreval ("Dia inválida")

                    fimse

                caso 2

                    se (ano mod 4 = 0) e (ano mod 400 = 0) entao

                        se (dia > 1) e (dia < FEVEREIRO_BISEXTO) entao
                        
                            escreval ("Data válida")

                        senao
                        
                            escreval ("Dia inválida")

                        fimse
                    
                    senao

                        se (dia > 1) e (dia < FEVEREIRO) entao
                        
                            escreval ("Data válida")

                        senao
                        
                            escreval ("Dia inválida")

                        fimse

                outrocaso

                    se (dia > 1) e (dia < MES_31) entao
                        
                        escreval ("Data válida")

                    senao
                        
                        escreval ("Dia inválida")

                    fimse

            fimescolha

        senao

            escreval("Mês inválido")

        fimse

    fimalgoritmo