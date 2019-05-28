{*
 * Descrição            Registro de cadastro de livros contendo título, autor,
 *                      editora, edição e ano.
 *
 *
 * @pacote              ALP1/UN.04
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/27/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "controleLivro"
const
    POSICAO_INICIAL = 1
    MAXIMO_REGISTRO = 100

tipo
    livro = registro
        autor : caracter
        edicao : caracter
        editora : caracter
        titulo : caracter
        ano : inteiro
    fimregistro

var
    baseLivros : vetor[POSICAO_INICIAL..MAXIMO_REGISTRO] de livro
    indice : inteiro

inicio

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    para indice de POSICAO_INICIAL ate MAXIMO_REGISTRO passo 1 faca

        escreval( "-----------------------------------------------" )
        escreva( "Informe o nome do título do novo livro: " )
        leia( baseLivros[indice].titulo )
        limpatela

        escreval( "Cadastro do livro " + baseLivros[indice].titulo )
        escreval( "-----------------------------------------------" )

        escreva( "Autor: " )
        leia( baseLivros[indice].autor )

        escreva( "Edicao: " )
        leia( baseLivros[indice].edicao )

        escreva( "Editora: " )
        leia( baseLivros[indice].editora )

        escreva( "Ano: " )
        leia( baseLivros[indice].ano )

    fimpara

fimalgoritmo