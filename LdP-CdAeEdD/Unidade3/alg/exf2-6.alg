{*
 * L� o c�digo de um determinado produto
 * Mostra sua classifica��o
 * 1        -    Alimento n�o-perec�vel
 * 2,3 ou 4 -    Alimento perec�vel
 * 5 ou 6   -    Vestu�rio
 * 7        -    Higiene pessoal
 * 8 at� 15 -    Limpeza e utens�lios dom�sticos
 * Outro    -	 Inv�lido
*}

algoritmo "exf2-6"
    
    var
        codigoProduto : inteiro

    inicio

	escreval("Informe o c�digo do produto:")
	leia(codigoProduto)

	escolha(codigoProduto)
	    caso 1

	        escreval("Alimento n�o-perec�vel")

	    caso 2, 3, 4

	        escreval("Alimento perec�vel")

	    caso 5, 6

		escreval("Vestu�rio")

	    caso 7

		escreval("Higiene pessoal")

	    caso 8, 9, 10, 11, 12, 13, 14, 15

		escreval("Limpeza e utens�lios dom�sticos")

	    outrocaso

		escreval("Inv�lido")

	fimescolha
 fimalgoritmo
