{*
 * Descrição        Informa a primeira letra do nome informado
 *
 *
 * @pacote          ALP1/UN.03
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/26/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "inicialNome"

var
    nome : caracter

inicio

    repita

        {*--------------------------------------------------------------------*}

        {* Entrada *}
        escreval("Informe fim para finalizar.")
        escreva("Informe um nome: ")
        leia(nome)
        {*--------------------------------------------------------------------*}

        {* Processamento *}
        se (maiusc(nome) = "FIM") entao

            interrompa

        fimse
        
        {*--------------------------------------------------------------------*}

        {* Saida *}
        limpatela
        escreval("Primeira letra: " + copia(nome, 1, 1))

    ate (falso)

fimalgoritmo