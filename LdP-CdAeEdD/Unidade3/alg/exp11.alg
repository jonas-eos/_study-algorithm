{* 
 * Fornecer a classificação olimpica de 3 países informado
 * para cada país é informado {nome, quantidade de medalhas de ouro, prata, bronze
 * medalhas de ouro tem peso 3, prata peso 2, bronze peso 1
 *}

 algoritmo "classificacao_olimpiadas"

    const
        PESO_OURO = 3
        PESO_PRATA = 2
        PESO_BRONZE = 1

    var
        nomePais1 : caracter
        nomePais2 : caracter
        nomePais3 : caracter
        {* qntd lê-se quantidade *}

        qntdOuroPais1 : inteiro
        qntdPrataPais1 : inteiro
        qntdBronzePais1 : inteiro

        qntdOuroPais2 : inteiro
        qntdPrataPais2 : inteiro
        qntdBronzePais2 : inteiro

        qntdOuroPais3 : inteiro
        qntdPrataPais3 : inteiro
        qntdBronzePais3 : inteiro

        pontuacaoPais1 : inteiro
        pontuacaoPais2 : inteiro
        pontuacaoPais3 : inteiro

        classificacaoPais1 : inteiro
        classificacaoPais2 : inteiro
        classificacaoPais3 : inteiro

    inicio

        {* Pais 1}
        escreval("Informe o primeiro país")
        leia(nomePais1)

        limpatela
        escreval("---" + nomePais1 + "---")

        escreval("Informe a quantidade de medalhas de ouro")
        leia(qntdOuroPais1)

        escreval("Informe a quantidade de medalhas de prata")
        leia(qntdPrataPais1)

        escreval("Informe a quantidade de medalhas de bronze")
        leia(qntdBronzePais1)

        pontuacaoPais1 <- qntdOuroPais1 * PESO_OURO
        pontuacaoPais1 <- pontuacaoPais1 + qntdPrataPais1 * PESO_PRATA
        pontuacaoPais1 <- pontuacaoPais1 + qntdBronzePais1 * PESO_BRONZE

        limpatela

        {* Pais 2 }
        escreval("Informe o segundo país")
        leia(nomePais2)

        limpatela
        escreval("---" + nomePais2 + "---")

        escreval("Informe a quantidade de medalhas de ouro")
        leia(qntdOuroPais2)

        escreval("Informe a quantidade de medalhas de prata")
        leia(qntdPrataPais2)

        escreval("Informe a quantidade de medalhas de bronze")
        leia(qntdBronzePais2)

        pontuacaoPais2 <- qntdOuroPais2 * PESO_OURO
        pontuacaoPais2 <- pontuacaoPais2 + qntdPrataPais2 * PESO_PRATA
        pontuacaoPais2 <- pontuacaoPais2 + qntdBronzePais2 * PESO_BRONZE

        limpatela

        {* Pais 3 *}
        escreval("Informe o terceiro país")
        leia(nomePais3)

        limpatela
        escreval("---" + nomePais3 + "---")

        escreval("Informe a quantidade de medalhas de ouro")
        leia(qntdOuroPais3)

        escreval("Informe a quantidade de medalhas de prata")
        leia(qntdPrataPais3)

        escreval("Informe a quantidade de medalhas de bronze")
        leia(qntdBronzePais3)

        pontuacaoPais3 <- qntdOuroPais3 * PESO_OURO
        pontuacaoPais3 <- pontuacaoPais3 + qntdPrataPais3 * PESO_PRATA
        pontuacaoPais3 <- pontuacaoPais3 + qntdBronzePais3 * PESO_BRONZE

        limpatela

        se(pontuacaoPais1 > pontuacaoPais2) entao

            se(pontuacaoPais1 > pontuacaoPais3) entao

                classificacaoPais1 <- 1

                se(pontuacaoPais3 > pontuacaoPais2) entao

                    classificacaoPais3 <- 2
                    classificacaoPais2 <- 3

                senao
                
                    classificacaoPais3 <- 3
                    classificacaoPais2 <- 2
                
                fimse

            senao

                classificacaoPais1 <- 2
                classificacaoPais2 <- 3
                classificacaoPais3 <- 1

            fimse

        se (pontuacaoPais1 > pontuacaoPais3) entao

            classificacaoPais1 <- 2
            classificacaoPais2 <- 1
            classificacaoPais3 <- 3

        senao

            classificacaoPais1 <- 3

            se (pontuacaoPais2 > pontuacaoPais3) entao

                classificacaoPais2 <- 1
                classificacaoPais3 <- 2

            senao

                classificacaoPais2 <-2
                classificacaoPais3 <-1

            fimse
        fimse
    fimse

    escreval("Classifições:")
    escreval(nomePais1 + " pontuação: " + numpcarac(pontuacaoPais1) + "Posição " + numpcarac(classificacaoPais1) + "ª lugar))
    escreval(nomePais2 + " pontuação: " + numpcarac(pontuacaoPais2) + "Posição " + numpcarac(classificacaoPais2) + "ª lugar))
    escreval(nomePais3 + " pontuação: " + numpcarac(pontuacaoPais3) + "Posição " + numpcarac(classificacaoPais3) + "ª lugar))

    fimalgoritmo