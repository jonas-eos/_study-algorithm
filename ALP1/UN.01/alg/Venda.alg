Algoritmo "Venda"
// Disciplina  : Algoritmo e Logica de Programacao I
// Professor   : Pietro
// Descrição   : Mostrar valor a pagar e o desconto recebido
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/05/2019
Var
   // Seção de Declarações das variáveis
   rPreco, rTxDesc, rVlrPagar, rVlrDesc : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
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