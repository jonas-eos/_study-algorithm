{*
 * Descrição            Calcular fatorial de um número informado
 *
 * @pacote              ALP1/UN.03
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/22/2019
 * @ver                 v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "fatorarNumero"

const
    ULTIMO_FATOR = 1

var
    contador, numero, numeroFatorado : inteiro

inicio

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    escreva("Informe um número para ser fatorado : ")
    leia(numero)

    limpatela
    
    {*------------------------------------------------------------------------*}

    {* Processamento *}
    contador <- (numero - 1)
    numeroFatorado <- (numero)

    enquanto (contador > ULTIMO_FATOR) faca
    
        numeroFatorado <- (numeroFatorado * contador)
        contador <- contador - 1

    fimenquanto
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva("Número " + numpcarac(numero))
    escreva(" fatorado = " + numpcarac(numeroFatorado))
    
fimalgoritmo