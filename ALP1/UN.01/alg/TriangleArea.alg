Algoritmo "TriangleArea"
// Disciplina  : Algoritmo e Logica de Programacao
// Professor   : Pietro
// Descri��o   : Calcular area de um triangulo
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/05/2019
Var
   // Se��o de Declara��es das vari�veis
   rAltura, rArea,rBase : real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   { Entrada }
   escreva("Informe a altura: ")
   leia(rAltura)
   escreva("Informe a Base: ")
   leia(rBase)

   limpatela

   { Processamento }
   
   // area = (base x altura) / 2
   rArea <- ((rBase * rAltura) / 2)

   { Saida }
   escreva("A area e: ", rArea)

Fimalgoritmo