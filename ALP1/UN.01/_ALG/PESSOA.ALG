Algoritmo "Pessoa"
// Disciplina  :  Algoritmo e linguagem de programacao I
// Professor   : Pietro
// Descrição   : Mostrar informações d euma pessoa
// Autor(a)    : Jonas Evangelista
// Data atual  : 5/4/2019
Var
   // Seção de Declarações das variáveis
   cNome, cTelefone : caracter
   iIdade : inteiro
   rAltura, rPeso : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   { Entrada }
   escreva("Informe o Nome: ")
   leia(cNome)
   escreva("Informe o telefone: ")
   leia(cTelefone)
   escreva("Informe a idade: ")
   leia(iIdade)
   escreva("Informe o peso: ")
   leia(rPeso)
   escreva("Informe a altura: ")
   leia(rAltura)

   limpatela
   { Processamento }

   { Saida }
   escreval("Nome: " + cNome)
   escreval("Telefone: " + cTelefone)
   escreval("Idade: ", iIdade)
   escreval("Peso: ", rPeso)
   escreval("Altura: ", rAltura)

Fimalgoritmo