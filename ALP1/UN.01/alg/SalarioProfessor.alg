Algoritmo "SalarioProfessor"
// Disciplina  : Algoritmo e logica de programacao I
// Professor   : Pietro
// Descri��o   : Calcular e mostrar salario liquido e bruto
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/05/2016
Var
   // Se��o de Declara��es das vari�veis
   rSalarioBrt, rSalarioLiq, rTaxDescInss, rDescInss, rVlrPorAula : real
   iQtdAula : inteiro


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   { Entrada }
   escreva("Informe o valor por hora R$: ")
   leia(rVlrPorAula)
   escreva("Informe quantas aulas foi dada no mes: ")
   leia(iQtdAula)
   escreva("Informe a percentagem de desconto do INSS: ")
   leia(rTaxDescInss)

   limpatela

   { Processamento }

   // Salario bruto = Valor por aula * quantidade de aulas
   rSalarioBrt <- rVlrPorAula * iQtdAula

   // Salario bruto = salario liquido - (salario liquido * %INSS)
   rDescInss <- rSalarioBrt * (rTaxDescInss / 100)
   rSalarioLiq <- rSalarioBrt - rDescInss

   { Saida }
   escreval("Salario bruto R$: ", rSalarioBrt)
   escreval("Salario liquido R$: ", rSalarioLiq)

Fimalgoritmo