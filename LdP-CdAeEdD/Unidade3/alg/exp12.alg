{* Jogo de perguntas e resposta
 * Perguntas para identificar o animal escolhido:
*}

algoritmo "jogo_adivinhacao"

    var
        resposta : caracter

    inicio
    
        escreval("---------------------------------------------")
        escreval("Vou adivinha qual voc� escolheu deste grupo")
        escreval("---------------------------------------------")
        escreval("Le�o   cavalo   homem   macaco   morcego")
        escreval("baleia   avestruz   pinguim   pato   �guia")
        escreval("tartaruga   crocodilo   cobra")
        escreval("---------------------------------------------")
        escreval("bora?")
        escreval("---------------------------------------------")
        escreval("Responda sim caso positivo, ou n�o caso negativo")

        escreval("� mam�fero?")
        leia(resposta)

            se (minusc(resposta) = "sim") entao

                escreval("� quadr�pede?")

                    leia(resposta)

                    se (minusc(resposta) = "sim") entao

                        escreval("� carn�voro?")
                        leia(resposta)

                            se(minusc(resposta) = "sim") entao
                            
                                escreval("Aha! achei!!! � um le�o!!!")

                            senao

                                escreval("Tu escolheo o cavalo n�? hehe")

                            fimse
                    senao

                        escreval("� B�pede?")
                        leia(resposta)
                        
                        se(minusc(resposta) = "sim") entao

                            escreval("� on�voro?")
                            leia(resposta)

                            se(minusc(resposta) = "sim") entao

                                escreval("Olha, tu escolheu o homem! eu sabia!")

                            senao

                                escreval("Escolheu logo os trolls dos macaquinhos?")

                            fimse

                        senao

                            escreva("� voador?)
                            leia(resposta)

                            se(minusc(resposta) = "sim") entao

                                escreval("Oh bichin chato esse tal de morcego")

                            senao

                                escreval("Procurando nemo!!! � a baleia que tu pegou �")

                            fimse

                        fimse
                    
                    fimse

            senao

                escreval("� ave?")
                leia(resposta)

                se(minusc(resposta) = "sim") entao

                    escreval("� n�o-voador?")
                    leia(resposta)

                    se(minusc(resposta) = "sim") entao

                        escreval("� Tropical?")
                        leia(resposta)

                        se(minusc(resposta) = "sim") entao

                            escreva("Avestruz, eu escolho voc�!")

                        senao

                            escreva("Partiu morar com os pinguins?")

                        fimse

                    senao

                        escreval("� nadador?")
                        leia(resposta)

                        se(minusc(resposta) = "sim") entao

                                escreval("quack quack, fazer uma sopa de pato!")
                        
                        senao

                                escreval("Sej� r�pido como a �guia!")

                        fimse

                    fimse

                senao

                    escreval("T� casco?")
                    leia(resposta)

                    se(minusc(respsota) = "sim") entao

                        escreval("Seja persistente como a targaruga!")

                    senao

                        escreval("� carnivoro?")
                        leia(resposta)

                        se(minusc(resposta) = "sim")

                            escreval("Cuidado cara, crocodilos s�o tensos!")

                        senao

                            escreval("Bicho traira � a tal da cobra!")

                        fimse

                    fimse
                
                fimse

            fimse

    fimalgoritmo