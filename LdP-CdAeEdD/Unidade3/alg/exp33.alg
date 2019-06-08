{*
 * Realizou-se uma pesquisa para determinar alguns dados estatísticos em relação
 * ao conjunto de crianças nascidas em um certo período de uma determinada 
 * maternidade.
 * Construa um algortimo que leia o número de crianças nascidas nesse período e,
 * depois, em um número indeterminado de vezes, o sexo de um recém-nascido
 * prematuro('M' - masculino; 'F' - feminino) e o número de dias que esse foi
 * mantido na incubadora.
 * Como finalizador, teremos a letra 'X' no lugar do sexo da criança.
 * Determine e imprima:
 * - a porcentagem de recém-nascido prematuros;
 * - a porcentagem de recém-nascidos meninos e meninas do total de prematuros;
 * - a média de dias de permanência dos recém-nascidos prematuros na incubadora;
 * - o maior número de dias que um recém-nascido prematuro permaneceu na incubadora;
*}
algoritmo "pesquisa"
const
   MASCULINO = "M"
   FEMININO = "F"
   FINALIZADOR = "X"
   DIA_VALIDO = 0
   INICIALIZADOR = 0

var
   quantidadeCriancasNascidas : inteiro
   quantidadeCriancasMasculino : inteiro
   quantidadeCriancasFeminino : inteiro
   quantidadeCriancasPrematuro : inteiro
   sexo : caracter
   diasMantidoIncubadora : inteiro
   porcentagemPrematuros : real
   porcentagemPrematurosFeminino : real
   porcentagemPrematurosMasculino : real
   somatorioDiasMantidoIncubadora : inteiro
   mediaDiasMantidoIncubadora : real
   maiorQuantidadeDiasMantidoIncubadora : inteiro
   contador : inteiro

inicio
   quantidadeCriancasMasculino <- INICIALIZADOR
   quantidadeCriancasFeminino <- INICIALIZADOR
   quantidadeCriancasPrematuro <- INICIALIZADOR
   contador <- INICIALIZADOR

   escreval("Informe quantas crianças nasceram no dia")
   leia(quantidadeCriancasNascidas)

   enquanto contador < quantidadeCriancasNascidas faca
      limpatela
      escreva("Para finalizar a inserção de dados")
      escreval("de crianças prematuras informe X")
      escreval("Sexo: M para masculino - F para feminino")
      leia(sexo)
      
      {*
       * Filtro para contar apenas crianças prematuro caso seja F ou M
       * O filtro ignora se caso for informado qualquer valor fora de F M e X
       *}
      se(sexo = MASCULINO) ou (sexo = FEMININO) entao
         quantidadeCriancasPrematuro <- quantidadeCriancasPrematuro + 1
         escolha(sexo)
            caso MASCULINO
               quantidadeCriancasMasculino <- quantidadeCriancasMasculino + 1
            caso FEMININO
               quantidadeCriancasFeminino <- quantidadeCriancasFeminino + 1
         fimescolha
         
         escreval("Informe quantos dias foi mantido na incubadora")
         leia(diasMantidoIncubadora)

         se(diasMantidoIncubadora > DIA_VALIDO) entao
            somatorioDiasMantidoIncubadora <- somatorioDiasMantidoIncubadora + diasMantidoIncubadora
         fimse

         se(diasMantidoIncubadora > maiorQuantidadeDiasMantidoIncubadora) entao
            maiorQuantidadeDiasMantidoIncubadora <- diasMantidoIncubadora
         fimse
      senao
         se sexo = FINALIZADOR entao
            interrompa
         fimse
      fimse
      contador <- contador + 1
   fimenquanto
   {* --------------------------- *}
   porcentagemPrematuros <- (quantidadeCriancasPrematuro * 100) / quantidadeCriancasNascidas
   porcentagemPrematurosFeminino <- (quantidadeCriancasFeminino * 100) / quantidadeCriancasPrematuro
   porcentagemPrematurosMasculino <- (quantidadeCriancasMasculino * 100) / quantidadeCriancasPrematuro
   mediaDiasMantidoIncubadora <- somatorioDiasMantidoIncubadora / quantidadeCriancasPrematuro

   limpatela
   escreva("Porcentagem de recém-nascidos prematuros: ")
   escreval(porcentagemPrematuros, "%")
   escreva("Porcentagem de recém-nascidos meninos prematuros")
   escreval(porcentagemPrematurosMasculino, "%")
   escreva("Porcentagem de recém-nascidos meninas prematuros")
   escreval(porcentagemPrematurosFeminino, "%")
   escreva("Média de dias de permanência dos prematuros na incubadora: ")
   escreval(mediaDiasMantidoIncubadora, " dias")
   escreva("O recém-nascido com maior dia mantido na incubadora")
   escreval(maiorQuantidadeDiasMantidoIncubadora)

fimalgoritmo