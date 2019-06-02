[* Jogo de perguntas e resposta
 * Perguntas para identificar o animal escolhido:
 * É mamifero?
 * É quadrúpede?
 * É carnívoro?
 * É herbívoro?
*]

algoritmo "jogo_adivinhacao"

    var
        resposta : caracter

    inicio

        escreval("É mamífero?")

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

                            escreval("? onívoro?")
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

                escreval("? ave?")
                leia(resposta)

                se(minusc(resposta) = "sim") entao

                    escreval("? não-voador?")
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

                        escreval("? carnivoro?")
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