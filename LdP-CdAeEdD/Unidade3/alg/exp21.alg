{* 
 * Em uma eleição presidencial existem quatro candidatos.
 * Os votos são informados por código.
 * Os dados utilizados para a escrutinagem obedecem à sequite codifição:
 * 1,2,3,4 = voto para os respectivos candidatos;
 * 5 = voto nulo;
 * 6 = voto em branco.
 * Elabore um algoritmo que calcule e escreva:
 * o total de votos para cada candidato e seu porcentual sobre o total;
 * o total de votos nulos e seu porcentula sobre o total
 * o total de votos em branco e seu porcentual sobre o total
 * Como finalizador do conjuto de votos, tem-se o o valor 0.
*}

algoritmo "urna_eletronica"

const
   FINALIZADOR = 0
   OPCAO_1 = 1
   OPCAO_2 = 2
   OPCAO_3 = 3
   OPCAO_4 = 4
   OPCAO_NULO = 5
   OPCAO_BRANCO = 6
   SEM_VOTO = 0

var
   leitor : inteiro
   candidato1 : inteiro
   candidato2 : inteiro
   candidato3 : inteiro
   candidato4 : inteiro
   nulo : inteiro
   branco : inteiro
   total : inteiro
   percentualDeVotosCandidato1 : real
   percentualDeVotosCandidato2 : real
   percentualDeVotosCandidato3 : real
   percentualDeVotosCandidato4 : real
   percentualDeVotosNulo : real
   percentualDeVotosBranco : real

inicio

   candidato1 <- SEM_VOTO
   candidato2 <- SEM_VOTO
   candidato3 <- SEM_VOTO
   candidato4 <- SEM_VOTO
   nulo <- SEM_VOTO
   branco <- SEM_VOTO
   total <- SEM_VOTO

   repita

      limpatela

      escreval(" ________________________")
      escreval("|Informe 0 para finalizar|")
      escreval("|1      -      FulanoA   |")
      escreval("|2      -      FulanoB   |")
      escreval("|3      -      FulanoC   |")
      escreval("|4      -      FulanoD   |")
      escreval("|5      -      Nulo      |")
      escreval("|6      -      Branco    |")
      escreval(" ------------------------")
      escreval("Qual o seu voto?")
      leia(leitor)
      
      escolha(leitor)
         caso OPCAO_1
            candidato1 <- candidato1 + 1
         caso OPCAO_2
            candidato2 <- candidato2 + 1
         caso OPCAO_3
            candidato3 <- candidato3 + 1
         caso OPCAO_4
            candidato4 <- candidato4 + 1
         caso OPCAO_NULO
            nulo <- nulo + 1
         caso OPCAO_BRANCO
            branco <- branco + 1
         caso FINALIZADOR
            interrompa
         outrocaso
            escreval("Inválido!")
            escreval("Precione enter para continuar.")
            leia(leitor)
            total <- total -1
      fimescolha

      total <- total + 1

   ate (falso)

   percentualDeVotosCandidato1 <- (candidato1 * 100) / total
   percentualDeVotosCandidato2 <- (candidato2 * 100) / total
   percentualDeVotosCandidato3 <- (candidato3 * 100) / total
   percentualDeVotosCandidato4 <- (candidato4 * 100) / total
   percentualDeVotosNulo <- (nulo * 100) / total
   percentualDeVotosBranco <- (branco * 100) / total

   escreval("FulanoA :" + numpcarac(candidato1) + " votos." + numpcarac(percentualDeVotosCandidato1) + " porcento")
   escreval("FulanoB :" + numpcarac(candidato2) + " votos." + numpcarac(percentualDeVotosCandidato2) + " porcento")
   escreval("FulanoC :" + numpcarac(candidato3) + " votos." + numpcarac(percentualDeVotosCandidato3) + " porcento")
   escreval("FulanoD :" + numpcarac(candidato4) + " votos." + numpcarac(percentualDeVotosCandidato4) + " porcento")
   escreval("Nulo  :" + numpcarac(nulo) + " votos." + numpcarac(percentualDeVotosNulo) + " porcento")
   escreval("Branco  :" + numpcarac(branco) + " votos." + numpcarac(percentualDeVotosBranco) + " porcento")

fimalgoritmo