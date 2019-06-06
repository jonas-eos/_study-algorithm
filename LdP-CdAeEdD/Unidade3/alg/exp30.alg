{*
 * Calcule o imposto de renda de um grupo de dez contribuintes, considerando que os dados
 * de cada contribuinte, número do CPF, número de dependentes e renda mensal são valores
 * fornecidos pelo usuário. Para cada contribuinte será feito um desconto de 5% do salário
 * mínimo por dependente.
 * 
 * Os valores da alíquota para cálculo do imposto são:
 * Renda líquida     	-           Alíquota
 * Até 2 salários mínimos	-	insento
 * 2 a 3 salários mínimos	-	5%
 * 3 a 5 salários mínimos	-	10%
 * 5 a 7 salários mínimos	-	15%
 * > 7 salários mínimos	   -	  20%
 * 
 * O valor do salário mínimo deve ser fornecido pelo usuário.
 *}

 algoritmo "imposto_de_renda"
 const
   PRIMEIRO_CONTRIBUINTE = 1
   PRIMEIRO_DEPENDENTE = 1
   MAXIMO_CONTRIBUINTES = 10
   INCREMENTAL = 1
   DESCONTO_POR_DEPENDENTE = 5 / 100
   FATOR_DE_DESCONTO = 1
   ALIQUOTA_5 = 5 / 100           // de 2 à 3 salários mínimos
   ALIQUOTA_10 = 10 / 100         // de 3 a 5 salários mínimos
   ALIQUOTA_15 = 15 / 100         // de 5 a 7 salários mínimos
   ALIQUOTA_20 = 20 / 100         // acima de 7

var
   cpf : caracter
   quantidadeDependentes : inteiro
   rendaMensal : real
   salarioMinimo : real
   quantidadeSalarioMinimo : real
   contador : inteiro
   contadorDependente : inteiro
   impostoDeRenda : real
   enter : caracter

inicio
   escreval("Para o calculo informe o salário mínimo atual")
   leia(salarioMinimo)
   para contador de PRIMEIRO_CONTRIBUINTE ate MAXIMO_CONTRIBUINTES passo INCREMENTAL faca
      limpatela
      escreval("Informe o número do CPF:")
      leia(cpf)
      escreval("Informe a quantidade de dependentes")
      leia(quantidadeDependentes)
      escreval("Informe a renda mensal")
      leia(rendaMensal)
      quantidadeSalarioMinimo <- rendaMensal / salarioMinimo
      se(quantidadeSalarioMinimo <= 2) entao
         escreval("Insento")
      senao
         se(quantidadeSalarioMinimo > 2) e (quantidadeSalarioMinimo <= 3) entao
            impostoDeRenda <- rendaMensal * ALIQUOTA_5
         fimse
         se(quantidadeSalarioMinimo > 3) e (quantidadeSalarioMinimo <= 5) entao
            impostoDeRenda <- rendaMensal * ALIQUOTA_10
         fimse
         se(quantidadeSalarioMinimo > 5) e (quantidadeSalarioMinimo <= 7) entao
            impostoDeRenda <- rendaMensal * ALIQUOTA_15
         fimse
         se(quantidadeSalarioMinimo > 7) entao
            impostoDeRenda <- rendaMensal * ALIQUOTA_20
         fimse
         para contadorDependente DE PRIMEIRO_DEPENDENTE ate quantidadeDependentes passo INCREMENTAL faca
               impostoDeRenda <- impostoDeRenda * (FATOR_DE_DESCONTO - DESCONTO_POR_DEPENDENTE)
         fimpara
      fimse
      escreval("Valor à pagar R$: ", impostoDeRenda)
      escreval("Pressione enter para continuar")
      leia(enter)
   fimpara

fimalgoritmo