{*
 * Descrição         Calcular equação de segundo grau
 *
 * @pacote           LdP-CdAeEdD\Unidade3
 * @autor            Jonas Evangelista (jonas.eos@outlook.com)
 * @desde            05/22/2019
 * @ver              v1.2.0
 *----------------------------------------------------------------------------*}
algoritmo "EquacaoSegundoGrau"

var
    a, b, c, delta, x1, x2  : real
    mensagem : caracter

inicio

   {*------------------------------------------------------------------------*}

   {* Entrada *}
   escreval("Equação de segundo grau ax² + bx + c")
   escreva("Informe o valor de a diferente de 0: ")
   leia(a)
   escreva("Informe o valor de b:")
   leia(b)
   escreva("Informe o valor de c:")
   leia(c)

   limpatela
   {*------------------------------------------------------------------------*}

   {* Processamento *}

   se (a = 0) entao

      mensagem <- "Conjunção a inválida, informado valor 0."
      
   senao
   
      delta <- ((exp(b, 2)) - 4 * a * c)
      
      se (delta < 0) entao
      
         mensagem <- "Delta negativo, raiz não real")
         
      senao
      
         se (delta = 0) entao
         
            x1 <- (-b / (2 * a))
            mensagem <- "Delta possui apenas uma raiz, x = " + numpcarac(x1)
            
         senao
         
            x1 <- ((-b + raizq(delta)) / (2 * a))
            x2 <- ((-b - raizq(delta)) / (2 * a))
            mensagem <- "x1 = " + numpcarac(x1) + "x2 = " + numpcarac(x2)
            
         fimse
      fimse
   fimse
   {*------------------------------------------------------------------------*}

   {* Saida *}

   escreva(mensagem)
   
fimalgoritmo
