{*
 * Calcular formula de Fibonacci de 20 termos
 * Sendo os dois primeiros termos informadosd pelo usuário
*}

algoritmo "fibonacci"
const
   TERMO_INICIAL = 1
   TERMO_FINAL = 20 - 2
   INCREMENTO = 1

var
   primeiroTermo : inteiro
   segundoTermo : inteiro
   resultado : inteiro
   contador : inteiro

inicio

   escreval("Informe o primeiro termo:")
   leia(primeiroTermo)
   escreval("Informe o segundo termo:")
   leia(segundoTermo)

   escreva(numpcarac(primeiroTermo) + " " + numpcarac(segundoTermo))

   para contador de TERMO_INICIAL ate TERMO_FINAL passo INCREMENTO faca

      resultado <- primeiroTermo + segundoTermo
      primeiroTermo <- segundoTermo
      segundoTermo <- resultado

      escreva(" " + numpcarac(resultado))

   fimpara
   
fimalgoritmo