Algoritmo "Media4Numeros"
// Disciplina  :  Algoritmo e logica de programacao I
// Professor   : Pietro
// Descri��o   : Calcular a media de 4 numeros
// Autor(a)    : Jonas Evangelista
// Data atual  : 05/05/2019
Var
   // Se��o de Declara��es das vari�veis

   iNum1, iNum2, iNum3, iNum4 : inteiro
   rMedia : real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   { Entrada }
   escreva("Informe o valor 1: ")
   leia(iNum1)
   escreva("Informe o valor 2: ")
   leia(iNum2)
   escreva("Informe o valor 3: ")
   leia(iNum3)
   escreva("Informe o valor 4: ")
   leia(iNum4)
   
   limpatela

   { Processamento }
   
   // total = num1 + num2 + num3 + num4
   // Media = total / 4
   rMedia <- ((iNum1 + iNum2 + iNum3 + iNum4) / 4)

   { Saida }
   escreval("A media dos quatro numeros e: ", rMedia)

Fimalgoritmo