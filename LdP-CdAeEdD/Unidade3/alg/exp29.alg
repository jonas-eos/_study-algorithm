{*
 * Uma agência de publicidade quer prestar serviços somente para as maiores companhias
 * - em número de funcionários - em cada uma das classificações: grande, média, pequena
 * e microempresa. Para tal, consegue um conjunto de dados com código, o número de
 * funcionários e o porte da empresa. Construa um algoritmo que liste o código da empresa
 * com maiores recursos humanos dentro de sua categoria. Utilize como finalizador o código
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
      escreval("* Para finalizar, informe o código 0 *")
      escreval("**************************************")
      escreval("Informe o código da empresa")
      leia(codigo)

      se(codigo <> CODIGO_FINALIZADOR) entao
         escreval("**************************************")
         escreval("*     Informe o porte da empresa     *")
         escreval("* G               -           Grande *")
         escreval("* M               -            Médio *")
         escreval("* P               -          Pequeno *")
         escreval("* Caso o código seja inválido a emp  *")
         escreval("* resa não será comtabilizada        *")
         escreval("**************************************")
         escreval("Informe o porte da empresa")
         leia(porteDaEmpresa)
      senao
         interrompa
      fimse

      escolha(copia(porteDaEmpresa, PRIMEIRA_POSICAO, UMA_POSICAO))
         caso "G", "M", "P"
            escreval("Informe a quantidade de funcionários")
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
            escreval("Porte da empresa informado é inválido!")
            escreval("Pressione enter para continuar")
            leia(enter)
      fimescolha
   ate falso

   escreval("Código da empresa com maior funcionário: ", codigoDaMaiorEmpresa)

fimalgoritmo