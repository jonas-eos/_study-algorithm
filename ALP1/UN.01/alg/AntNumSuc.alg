Algoritmo "AntNumSuc"
// Disciplina  :  Algoritmo e Logica de Programacao I
// Professor   :  Pietro
// Descri��o   :  Mostrar o Antecessor o numero informado
//                e o Sucessor
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/05/2019
Var
   // Se��o de Declara��es das vari�veis
   iNum, iNumAnter, iNumSuces : inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   { Entrada }
   escreva("Informe o valor: ")
   leia(iNum)

   limpatela

   { Processamento }

   // Antercessor = Num - 1
   iNumAnter <- iNum - 1
   
   //Sucessor = Num + 1
   iNumSuces <- iNum + 1

   { Saida }
   escreva(iNumAnter, " ", iNum, " ", iNumSuces)

Fimalgoritmo
