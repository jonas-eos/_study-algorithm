Algoritmo "CalcularSalario"
// Disciplina  :  < Algoritmo e logica de programacao I >
// Professor   : < Pietro >
// Descrição   : Calcular Salario Bruto, Salario Minimo
//               FGTS e INSS e mostrar para o usuario
// Autor(a)    : Jonas Evangelista
// Data atual  : 5/5/2019

const

   TaxaInss = 9
   TaxaFgts = 8
   TaxaHoraExtra = 100

Var
   // Seção de Declarações das variáveis
   rHrTrab, rHrExt, rValPorHrTrab : real
   rSalarioLiq, rSalarioBrto : real
   rInss, rFgts : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   { Entrada }
   escreva("Informe horas trabalhadas: ")
   leia(rHrTrab)
   escreva("Informe horas extras: ")
   leia(rHrExt)
   escreva("Informe valor por hora trabalhada: ")
   leia(rValPorHrTrab)

   limpatela

   { Processamento }
   
   // Calcula salario bruto
   // Fator tempo = hora trabalhada + ( hora extra * (1 + % do valor da hora extra)
   // salario = fator tempo * valor por hora
   // ex. salario = (10 + (5 * (1 + (100/100))) * 10)

   rSalarioBrto <- (((rHrTrab + rHrExt * (1 + (TaxaHoraExtra / 100)))) * rValPorHrTrab)

   rInss <- rSalarioBrto * (TaxaInss / 100) // INSS = salario * taxa inss
   rFgts <- rSalarioBrto * (TaxaFgts / 100) // FGTS = salario * taxa fgts

   rSalarioLiq <- rSalarioBrto - rInss // Salario liquido = salario bruto - INSS

   { Saida }
   escreval("Salario Bruto: ", rSalarioBrto)
   escreval("INSS: ", rInss)
   escreval("FGTS: ", rFgts)
   escreval("Salario Liquido: ", rSalarioLiq)

Fimalgoritmo