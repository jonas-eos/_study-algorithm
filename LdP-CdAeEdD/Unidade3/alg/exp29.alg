{*
 * Uma ag�ncia de publicidade quer prestar servi�os somente para as maiores companhias
 * - em n�mero de funcion�rios - em cada uma das classifica��es: grande, m�dia, pequena
 * e microempresa. Para tal, consegue um conjunto de dados com c�digo, o n�mero de
 * funcion�rios e o porte da empresa. Construa um algoritmo que liste o c�digo da empresa
 * com maiores recursos humanos dentro de sua categoria. Utilize como finalizador o c�digo
 * de empresa igual a 0.
 *}
 algoritmo "atendimento_publicidade"
 const
   CODIGO_FINALIZADOR = 0
   PRIMEIRA_POSICAO = 1
   UMA_POSICAO = 1 

 var
   codigo : inteiro
   quantidadeDeFuncionarios : inteiro
   porteDaEmpresa : caracter
   codigoDaMaiorEmpresa : inteiro
   maiorQuantidadeFuncionario : inteiro
   primeiraExecucao : logico
   enter : caracter

inicio
   primeiraExecucao <- verdadeiro

   repita
      limpatela
      escreval("**************************************")
      escreval("* Para finalizar, informe o c�digo 0 *")
      escreval("**************************************")
      escreval("Informe o c�digo da empresa")
      leia(codigo)

      se(codigo <> CODIGO_FINALIZADOR) entao
         escreval("**************************************")
         escreval("*     Informe o porte da empresa     *")
         escreval("* G               -           Grande *")
         escreval("* M               -            M�dio *")
         escreval("* P               -          Pequeno *")
         escreval("* Caso o c�digo seja inv�lido a emp  *")
         escreval("* resa n�o ser� comtabilizada        *")
         escreval("**************************************")
         escreval("Informe o porte da empresa")
         leia(porteDaEmpresa)
      senao
         interrompa
      fimse

      escolha(copia(porteDaEmpresa, PRIMEIRA_POSICAO, UMA_POSICAO))
         caso "G", "M", "P"
            escreval("Informe a quantidade de funcion�rios")
            leia(quantidadeDeFuncionarios)
            se(primeiraExecucao) entao
               maiorQuantidadeFuncionario <- codigo
               maiorQuantidadeFuncionario <- quantidadeDeFuncionarios
               primeiraExecucao <- falso
            senao
               se(quantidadeDeFuncionarios > maiorQuantidadeFuncionario) entao
                  codigoDaMaiorEmpresa <- codigo
                  maiorQuantidadeFuncionario <- quantidadeDeFuncionarios
               fimse
            fimse
         outrocaso
            escreval("Porte da empresa informado � inv�lido!")
            escreval("Pressione enter para continuar")
            leia(enter)
      fimescolha
   ate falso

   escreval("C�digo da empresa com maior funcion�rio: ", codigoDaMaiorEmpresa)

fimalgoritmo