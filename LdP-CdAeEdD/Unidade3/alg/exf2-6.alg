{*
 * Lê o código de um determinado produto
 * Mostra sua classificação
 * 1        -    Alimento não-perecível
 * 2,3 ou 4 -    Alimento perecível
 * 5 ou 6   -    Vestuário
 * 7        -    Higiene pessoal
 * 8 até 15 -    Limpeza e utensílios domésticos
 * Outro    -	 Inválido
*}

algoritmo "exf2-6"
    
    var
        codigoProduto : inteiro

    inicio

	escreval("Informe o código do produto:")
	leia(codigoProduto)

	escolha(codigoProduto)
	    caso 1

	        escreval("Alimento não-perecível")

	    caso 2, 3, 4

	        escreval("Alimento perecível")

	    caso 5, 6

		escreval("Vestuário")

	    caso 7

		escreval("Higiene pessoal")

	    caso 8, 9, 10, 11, 12, 13, 14, 15

		escreval("Limpeza e utensílios domésticos")

	    outrocaso

		escreval("Inválido")

	fimescolha
 fimalgoritmo
