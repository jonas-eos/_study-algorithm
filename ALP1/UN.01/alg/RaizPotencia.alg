Algoritmo "RaizPotencia"
// Disciplina  :  Algoritmo e logica de programacao I
// Professor   : Pietro
// Descri��o   : Calcular o quadrado e a raiz quadrada de 1 numero
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/05/2019
Var
   // Se��o de Declara��es das vari�veis
   iNum : inteiro
   rPotencia, rRaiz : real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   { Entrada }
   escreva("Informe o valor do numero: ")
   leia(iNum)
   
   limpatela

   { Processamento }
   
   // Potencia = Num ^ 2
   rPotencia <- exp(iNum,2)
   // Raiz = raiz quadrada de Num
   rRaiz <- raizq(iNum)

   { Saida }
   escreval("Quadrado de", iNum, " = " , rPotencia)
   escreval("Raiz de", iNum, " = " , rRaiz)

Fimalgoritmo