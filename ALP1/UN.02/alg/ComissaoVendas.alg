Algoritmo "ComissaoVendas"
// Disciplina  : Algoritmos e Logica de Programacao I
// Professor   : Pietro
// Descri��o   : Calcular Salario total por comissao
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/09/2019
Var
   // Se��o de Declara��es das vari�veis
   cNome : caracter
   iMatricula, iTxComissao : inteiro
   rSalarioFixo, rSalarioTotal, rTotalVendas : real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   { Entrada }
   escreva("Informe sua matricula: ")
   leia(iMatricula)
   escreva("Informe seu nome: " )
   leia(cNome)
   escreva("Informe seu salario fixo R$: ")
   leia(rSalarioFixo)
   escreva("Informe total em vendas R$: ")
   leia(rTotalVendas)

   limpatela

   { Processamento }

   // se vendas < 1500 comissao 2% senao 4%
   se (rTotalVendas < 1500) entao
      iTxComissao <- 2
   senao
      iTxComissao <- 4
   fimse
   
   // salario total = salario fixo * (1 + (Taxa comissao/100))
   rSalarioTotal <- rSalarioFixo * (1 + (iTxComissao / 100))

   { Saida }
   escreval("Nome: " + cNome)
   escreval("Matricula: ", iMatricula)
   escreval("Salario fixo: ", rSalarioFixo)
   escreval("Salario Total: ", rSalarioTotal)

Fimalgoritmo