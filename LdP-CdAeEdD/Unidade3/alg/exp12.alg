{* Jogo de perguntas e resposta
 * Perguntas para identificar o animal escolhido:
*}

algoritmo "jogo_adivinhacao"

    var
        resposta : caracter

    inicio
    
        escreval("---------------------------------------------")
        escreval("Vou adivinha qual você escolheu deste grupo")
        escreval("---------------------------------------------")
        escreval("Leão   cavalo   homem   macaco   morcego")
        escreval("baleia   avestruz   pinguim   pato   águia")
        escreval("tartaruga   crocodilo   cobra")
        escreval("---------------------------------------------")
        escreval("bora?")
        escreval("---------------------------------------------")
        escreval("Responda sim caso positivo, ou não caso negativo")

        escreval("É mamífero?")
        leia(resposta)

            se (minusc(resposta) = "sim") entao

                escreval("É quadrúpede?")

                    leia(resposta)

                    se (minusc(resposta) = "sim") entao

                        escreval("É carnívoro?")
                        leia(resposta)

                            se(minusc(resposta) = "sim") entao
                            
                                escreval("Aha! achei!!! é um leão!!!")

                            senao

                                escreval("Tu escolheo o cavalo né? hehe")

                            fimse
                    senao

                        escreval("É Bípede?")
                        leia(resposta)
                        
                        se(minusc(resposta) = "sim") entao

                            escreval("É onívoro?")
                            leia(resposta)

                            se(minusc(resposta) = "sim") entao

                                escreval("Olha, tu escolheu o homem! eu sabia!")

                            senao

                                escreval("Escolheu logo os trolls dos macaquinhos?")

                            fimse

                        senao

                            escreva("É voador?)
                            leia(resposta)

                            se(minusc(resposta) = "sim") entao

                                escreval("Oh bichin chato esse tal de morcego")

                            senao

                                escreval("Procurando nemo!!! É a baleia que tu pegou é")

                            fimse

                        fimse
                    
                    fimse

            senao

                escreval("É ave?")
                leia(resposta)

                se(minusc(resposta) = "sim") entao

                    escreval("É não-voador?")
                    leia(resposta)

                    se(minusc(resposta) = "sim") entao

                        escreval("É Tropical?")
                        leia(resposta)

                        se(minusc(resposta) = "sim") entao

                            escreva("Avestruz, eu escolho você!")

                        senao

                            escreva("Partiu morar com os pinguins?")

                        fimse

                    senao

                        escreval("É nadador?")
                        leia(resposta)

                        se(minusc(resposta) = "sim") entao

                                escreval("quack quack, fazer uma sopa de pato!")
                        
                        senao

                                escreval("Sejá rápido como a águia!")

                        fimse

                    fimse

                senao

                    escreval("Tê casco?")
                    leia(resposta)

                    se(minusc(respsota) = "sim") entao

                        escreval("Seja persistente como a targaruga!")

                    senao

                        escreval("É carnivoro?")
                        leia(resposta)

                        se(minusc(resposta) = "sim")

                            escreval("Cuidado cara, crocodilos são tensos!")

                        senao

                            escreval("Bicho traira é a tal da cobra!")

                        fimse

                    fimse
                
                fimse

            fimse

    fimalgoritmo