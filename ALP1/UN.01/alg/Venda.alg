Algoritmo "Venda"
// Disciplina  : Algoritmo e Logica de Programacao I
// Professor   : Pietro
// Descri��o   : Mostrar valor a pagar e o desconto recebido
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/05/2019
Var
   // Se��o de Declara��es das vari�veis
   rPreco, rTxDesc, rVlrPagar, rVlrDesc : real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   { Entrada }
   escreva("Informe o preco do produto: ")
   leia(rPreco)
   escreva("Informe a porcentagem de desconto: ")
   leia(rTxDesc)

   limpatela

   { Processamento }
   // Desconto = Preco * (Taxa desconto / 100)
   rVlrDesc <- (rPreco * (rTxDesc / 100))
   
   // Valor a pagar = Preco - Desconto
   rVlrPagar <- rPreco - rVlrDesc

   { Saida }
   escreval("Valor do desconto: ", rVlrDesc)
   escreva("Valor total a pagar: ", rVlrPagar)

Fimalgoritmo