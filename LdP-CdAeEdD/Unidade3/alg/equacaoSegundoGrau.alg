algoritmo "EquacaoSegundoGrau"

var
    a, b, c, delta, x1, x2  : real
    mensagem : caracter

inicio

   escreval("Equação de segundo grau ax² + bx + c")
   escreva("Informe o valor de a diferente de 0: ")
   leia(a)
   escreva("Informe o valor de b:")
   leia(b)
   escreva("Informe o valor de c:")
   leia(c)

   limpatela

   se (a = 0) entao
      mensagem <- "Conjunção a inválida, informado valor 0."
   senao
      delta = (exp(b, 2) - 4 * a * c)
      se (delta < 0) entao
         mensagem <- "Delta negativo, raiz não é real")
      senao
         se (delta = 0) entao
            x1 <- (-b / (2 * a) )
            mensagem <- "Delta possui apenas uma raiz, x = " + numpcarac(x1)
         senao
            x1 <- ((exp(-b,2) + raizq(delta)) / (2 * a))
            x2 <- ((exp(-b,2) - raizq(delta)) / (2 * a))
            mensagem <- "x1 = " + numpcarac(x1) + "x2 = " + numpcarac(x2)
         fimse
      fimse
   fimse

   escreva(mensagem)
fimalgoritmo
