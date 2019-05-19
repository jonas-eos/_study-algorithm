Algoritmo "TriangleArea"
// Disciplina  : Algoritmo e Logica de Programacao
// Professor   : Pietro
// Descrição   : Calcular area de um triangulo
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/05/2019
Var
   // Seção de Declarações das variáveis
   rAltura, rArea,rBase : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
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