{*
 * Realizou-se uma pesquisa para determinar alguns dados estat�sticos em rela��o
 * ao conjunto de crian�as nascidas em um certo per�odo de uma determinada 
 * maternidade.
 * Construa um algortimo que leia o n�mero de crian�as nascidas nesse per�odo e,
 * depois, em um n�mero indeterminado de vezes, o sexo de um rec�m-nascido
 * prematuro('M' - masculino; 'F' - feminino) e o n�mero de dias que esse foi
 * mantido na incubadora.
 * Como finalizador, teremos a letra 'X' no lugar do sexo da crian�a.
 * Determine e imprima:
 * - a porcentagem de rec�m-nascido prematuros;
 * - a porcentagem de rec�m-nascidos meninos e meninas do total de prematuros;
 * - a m�dia de dias de perman�ncia dos rec�m-nascidos prematuros na incubadora;
 * - o maior n�mero de dias que um rec�m-nascido prematuro permaneceu na incubadora;
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

   escreval("Informe quantas crian�as nasceram no dia")
   leia(quantidadeCriancasNascidas)

   enquanto contador < quantidadeCriancasNascidas faca
      limpatela
      escreva("Para finalizar a inser��o de dados")
      escreval("de crian�as prematuras informe X")
      escreval("Sexo: M para masculino - F para feminino")
      leia(sexo)
      
      {*
       * Filtro para contar apenas crian�as prematuro caso seja F ou M
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
   escreva("Porcentagem de rec�m-nascidos prematuros: ")
   escreval(porcentagemPrematuros, "%")
   escreva("Porcentagem de rec�m-nascidos meninos prematuros")
   escreval(porcentagemPrematurosMasculino, "%")
   escreva("Porcentagem de rec�m-nascidos meninas prematuros")
   escreval(porcentagemPrematurosFeminino, "%")
   escreva("M�dia de dias de perman�ncia dos prematuros na incubadora: ")
   escreval(mediaDiasMantidoIncubadora, " dias")
   escreva("O rec�m-nascido com maior dia mantido na incubadora")
   escreval(maiorQuantidadeDiasMantidoIncubadora)

fimalgoritmo