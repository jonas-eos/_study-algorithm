{*
 * Lê o ano de nascimento de uma pessoa
 * Calcula e mostra a sua idade
 * Verifica e mostra se ela já tem idade para votar (16 ou mais)
 * E para conseguir a Carteira de Habilitação (18 ou mais)
*}

algoritmo "exf2-5"

    const
        ANOATUAL = 2019
	IDADE_PARA_VOTAR = 16
	IDADE_PARA_HABILITACAO = 18
    var
        anoNascimento : inteiro
        idade : inteiro

    inicio

	escreval("Qual seu ano de nascimento?")
	leia(anoNascimento)

	idade <- ANOATUAL - anoNascimento
	escreval("Idade: " + numpcarac(idade))

	se (idade >= IDADE_PARA_VOTAR) entao

	    escreval("Você já tem idade para votar!")

	fimse

	se (idade >= IDADE_PARA_HABILITACAO) entao

	    escreval("Você já tem idade para tirar carteira de habilitação!")

	fimse

    fimalgoritmo
