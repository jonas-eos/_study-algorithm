{*
 * Descrição            Capturar 20 nomes e imprimir a inicial dos 20 nomes
 *
 * @pacote              ALP1/UN.03
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/23/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "iniciais20Nomes"

const
    MAXIMO_DE_NOME = 20

var
    listaPrimeiraLetraNome, nome : caracter
    contador : inteiro

inicio
    {*------------------------------------------------------------------------*}

    {* Constructor *}
    listaPrimeiraLetraNome <- ""

    {*------------------------------------------------------------------------*}
    {* Entrada *}
    para contador de 1 ate MAXIMO_DE_NOME passo 1 faca

        escreva("Informe o nome: ")
        leia(nome)

        listaPrimeiraLetraNome <- listaPrimeiraLetraNome + copia(nome, 1, 1)

    fimpara

    limpatela
    
    {*------------------------------------------------------------------------*}

    {* Processamento / Saida*}
    escreva("Iniciais dos nomes:")

    para contador de 1 ate MAXIMO_DE_NOME passo 1 faca

        escreva(" " + copia(listaPrimeiraLetraNome, contador, 1))

    fimpara

fimalgoritmo
