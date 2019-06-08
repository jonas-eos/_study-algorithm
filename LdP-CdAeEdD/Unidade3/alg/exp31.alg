{*
 * Foi realizada uma pesquisa sobre algumas características físicas da população
 * de uma certa região, a qual coletou os seguintes dados referentes a cada 
 * habitante para análise:
 * Sexo {'M' - Masculino; 'F' - Feminino}
 * Cor dos olhos {'A' - azuis; 'V' - verdes; 'C' - castanhos}
 * Cor dos cabelos {'L' - loiros; 'C' - castanhos; 'P' - pretos}
 * idade
 * Faça um algoritmo que detemrine e escreva:
 * - a maior idade dos habitantes;
 * - a porcentagem entre os indivíduos do sexo masculino, cuja idade está entre
 * 18 e 35 anos, inclusive;
 * - a porcentagem do total de indivíduos do sexo feminino cuja idade está entre
 * 18 e 35 anos, inclusive, e que tenham olhos verdes e cabelos loiros;
 * O final do conjunto de habitantes é reconhecido pelo valor -1 entrando como
 * idade
*}

algoritmo "pesquisa"
const
   {* Constantes para sexo *}
   MASCULINO = "M"
   FEMININO = "F"

   {* Constantes para cores olhos e cabelos *}
   AZUIS = "A"
   VERDES = "V"
   CASTANHOS = "C"
   LOIROS = "L"
   PRETOS = "P"

   {* Constante para identificar fim do algoritmo *}
   FINALIZAR = 0

var
   sexo : caracter
   corDosOlhos : caracter
   corDosCabelos : caracter
   idade : inteiro
   maiorIdade : inteiro

   contadorSexoMasculino : inteiro
   contadorSexoMasculino18a35 : inteiro
   contadorSexoFeminino18a35 : inteiro
   contadorSfFiltro : inteiro       {* Contador sexo feminino filtro (cabelo loiros/olhos verdes) *}

   porcentagemSm18a35 : real        {* Porcentagem sexo masculino entre 18 e 35 anos *}
   porcentagemSf18a35OvCl : real    {* Porcentagem sexo feminino entre 18 e 35 anos com olhos verdes e cabelos loiros *}

inicio
   maiorIdade <- 0
   contadorSexoMasculino <- 0
   contadorSexoMasculino18a35 <- 0
   contadorSexoFeminino18a35 <- 0
   contadorSfFiltro <- 0

   repita
      escreval("Informe a idade")
      leia(idade)

      se(idade < FINALIZAR) entao
         interrompa
      senao
         escreval("M - masculino")
         escreval("F - feminino")
         escreval("Informe o sexo")
         leia(sexo)
         escreval("A - azuis")
         escreval("V - verdes")
         escreval("C - castanhos")
         escreval("Cor dos olhos")
         leia(corDosOlhos)
         escreval("L - loiros")
         escreval("C -castanhos")
         escreval("P - pretos")
         escreval("Cor dos cabelos")
         leia(corDosCabelos)
         
         se(idade > maiorIdade) entao
            maiorIdade <- idade
         fimse

         escolha(sexo)
            caso MASCULINO
               contadorSexoMasculino <- contadorSexoMasculino + 1
               se((idade >= 18) e (idade <=35)) entao
                  contadorSexoMasculino18a35 <- contadorSexoMasculino18a35 + 1
               fimse
            caso FEMININO
               se((idade >= 18) e (idade <= 35)) entao
                  contadorSexoFeminino18a35 <- contadorSexoFeminino18a35 + 1
                  se((corDosOlhos = VERDES) e (corDosCabelos = LOIROS)) entao
                     contadorSfFiltro <- contadorSfFiltro + 1
                  fimse
               fimse
         fimescolha
      fimse
      limpatela
   ate (falso)

   porcentagemSm18a35 <- (contadorSexoMasculino18a35 * 100) / contadorSexoMasculino
   porcentagemSf18a35OvCl <- (contadorSfFiltro * 100) / contadorSexoFeminino18a35

   escreval("O habitante com maior idade tem ", maiorIdade, " anos.")
   escreva("Porcentagem entre sexo masculino com 18 e 35 anos: ")
   escreval(porcentagemSm18a35, "%")
   escreva("Porcentagem entre o sexo feminino entre 18 e 35 anos ")
   escreva("que tenham olhos verdes e cabelos loiros", porcentagemSf18a35OvCl)
fimalgoritmo