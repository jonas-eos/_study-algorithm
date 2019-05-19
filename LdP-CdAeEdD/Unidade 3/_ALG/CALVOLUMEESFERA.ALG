Algoritmo "CalVolumeEsfera"
// Disciplina  : -
// Professor   : -
// Descrição   : -
// Autor(a)    : Jonas Envangelista
// Data atual  : 05/08/2019
Var
   // Seção de Declarações das variáveis
   rRaio, rVolume : real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   { Entrada }
   escreva("Informe o valor do raio")
   leia(rRaio)

   limpatela

   { Processamento }

   // volume = (4 / 3) * PI * raio
   rVolume <- ((4 / 3) * PI * rRaio)

   { Saida }
   escreva("Volume = ", rVolume)

Fimalgoritmo