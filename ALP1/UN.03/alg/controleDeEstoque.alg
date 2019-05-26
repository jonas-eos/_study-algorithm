{*
 * Descrição        Calcula o estoque do produto, informa se está com baixo es-
 *                  toque e informa qual o produto com maior estoque.
 *
 *
 * @pacote          ALP1/UN.03
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/26/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "controleDeEstoque"

const
    FAIXA_ESTOQUE_BAIXA = 30
var
    nomeDoProduto, nomeDoProdutoMaiorEstoque : caracter
    produtoComMaiorEstoque, quantidadeEmEstoque, quantidadeProduzido : inteiro
    quantidadeVendido : inteiro

inicio
    repita

        escreval("Informe fim para finalizar o algoritmo.")
        escreva("Informe o nome do produto: ")
        leia(nomeDoProduto)

        se (maiusc(nomeDoProduto) = "FIM") entao

        interrompa

        fimse

        escreva("Informe a quantidade produzido: ")
        leia(quantidadeProduzido)

        escreva("Informe a quantidade vendido: ")
        leia(quantidadeVendido)

        quantidadeEmEstoque <- quantidadeProduzido - quantidadeVendido

        se (quantidadeEmEstoque <= FAIXA_ESTOQUE_BAIXA) entao

            escreva("Esta produto está com baixo estoque: ")
            escreval(numpcarac(quantidadeEmEstoque))
        
        senao

            se (quantidadeEmEstoque > produtoComMaiorEstoque) entao

                nomeDoProdutoMaiorEstoque <- nomeDoProduto
                produtoComMaiorEstoque <- quantidadeEmEstoque

            fimse
        fimse
        
        escreval("------------------------------------------------------------")

    ate (falso)
    
    escreval("------------------------------------------------------------")
    escreval("Produto com maior estoque:")
    escreval("Nome: " + nomeDoProdutoMaiorEstoque)
    escreval("Quantidade em estoque: " + numpcarac(produtoComMaiorEstoque))

fimalgoritmo