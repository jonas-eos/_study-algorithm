Algoritmo "FaturBiblioteca"
// Disciplina  : Algoritmo e Logica de Programacao I
// Professor   : Pietro
// Descri��o   : Simula faturamento de todos os livros alugados no mes
//               Simula faturamento de 80% dos livros alugados no ano
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/05/2019

const

   ALUGADOSANUAL = 80 // equivale a 80%
   MESES = 12 // 1 ano


Var
   // Se��o de Declara��es das vari�veis
   iQtdLivros : inteiro
   rFaturAnual, rFaturMensal, rVlrAluguel : real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   { Entrada }
   escreva("Informe quantidade de livros na biblioteca: ")
   leia(iQtdLivros)
   escreva("Informe o valor de aluguel de cada livro: ")
   leia(rVlrAluguel)

   limpatela

   { Processamento }

   // Faturamento no mes = Livros * aluguel
   rFaturMensal <- iQtdLivros * rVlrAluguel

   // Faturamento no ano = ((Livros * Porcentagem alugado) * valor alugue) * 12 meses
   rFaturAnual <- ((iQtdLivros * (ALUGADOSANUAL/100) * rVlrAluguel) * MESES)

   { Saida }
   escreval("Simulacao 100% alugado no mes: ", rFaturMensal)
   escreva("Simulacao 80% alugado no ano todo mes: ", rFaturAnual)


Fimalgoritmo