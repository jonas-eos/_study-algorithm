{*
 * Descrição            L? o preço de compra e o preço de venda de 30 produtos e
 *                      imprime o número de mercadorias que apresenta
 *                      lucro < 15% e quantas apresentam lucro > 30%
 *
 *
 * @pacote              ALP1/UN.04
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/27/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
Algoritmo "controleDeLucro" 

const
    BAIXO_LUCRO = 14
    MEDIO_LUCRO = 31
    POSICAO_INICIAL = 1
    POSICAO_FINAL = 30

Tipo
    classeProduto = registro 
        precoDeCompra : real
        precoDeVenda : real
fimregistro

Var
        produto : vetor[POSICAO_INICIAL..POSICAO_FINAL] de classeProduto

        contador :inteiro

        // qntd significa quantidade
        qntdProdutoBaixoLucro : inteiro
        qntdProdutoMedioLucro : inteiro

        lucro, taxaDeLucro : real

Inicio

    {*------------------------------------------------------------------------*}

    {* Inicializadores *}
    qntdProdutoBaixoLucro <- 0
    qntdProdutoMedioLucro <- 0

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    Para contador de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        Escreva("Informe o preço de compra R$: ") 
        Leia(produto[contador].precoDeCompra)

        Escreva("Informe o preço de venda R$: ") 
        Leia(produto[contador].precoDeVenda)

    Fimpara

    {*------------------------------------------------------------------------*}

    {* Processamento *}
   Para contador de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        taxaDeLucro <- (produto[contador].precoDeVenda / produto[contador].precoDeCompra)
        lucro <- ((taxaDeLucro - 1) * 100)

        Se (lucro <= BAIXO_LUCRO) entao

            qntdProdutoBaixoLucro <- qntdProdutoBaixoLucro + 1

        fimse

        se (lucro >= MEDIO_LUCRO) entao
        
            qntdProdutoMedioLucro <- qntdProdutoMedioLucro + 1

        fimse

    fimpara
    
    limpatela

    {*------------------------------------------------------------------------*}

    {* Saida *}    
    escreva("Quantidade de produtos com lucro abaixo de 15%: ")
    escreval(numpcarac(qntdProdutoBaixoLucro))
    escreva("Quantidade de produtos com lucro acima de 30%: ")
    escreval(numpcarac(qntdProdutoMedioLucro))

Fimalgoritmo 
