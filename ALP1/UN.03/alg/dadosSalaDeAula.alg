algoritmo "dadosSalaDeAula"

const
    QUANTIDADE_ALUNOS = 20
    QUANTIDADE_NOTAS_INDIVIDUAL = 4
    ESPACOS_NOME = "                               "
    ESPACO_NOTAS = "          "

var
    nome : vetor[1..QUANTIDADE_ALUNOS] de caracter
    nota : vetor[1..QUANTIDADE_ALUNOS, 1..QUANTIDADE_NOTAS_INDIVIDUAL] de inteiro
    mediaIndividual : vetor[1..QUANTIDADE_ALUNOS] de real
    mediaGeral : real
    dadosDoAluno : vetor [1.. QUANTIDADE_ALUNOS] de caracter
    contadorDeAlunos, contadorDeNotas : inteiro
    bufferNomeAluno,  bufferEntradaNota, bufferNotaFormatada, bufferDadosDoAluno : caracter
    bufferTotalizadorMediaIndividual : real
    bufferMediaIndividual : caracter

inicio
    mediaGeral <- 0.0

    para contadorDeAlunos de 1 ate QUANTIDADE_ALUNOS passo 1 faca

        escreva("Informe o nome do aluno numero " + numpcarac(contadorDeAlunos))
        leia(nome[contadorDeAlunos])

        bufferNomeAluno <- nome[contadorDeAlunos] + ESPACOS_NOME
        bufferTotalizadorMediaIndividual <- 0
        escreval("Aluno: " + nome[contadorDeAlunos])

        para contadorDeNotas de 1 ate QUANTIDADE_NOTAS_INDIVIDUAL passo 1 faca
            escreva("Nota " + numpcarac(contadorDeNotas) + ": ")
            leia(nota[contadorDeAlunos,contadorDeNotas])

            bufferEntradaNota <- numpcarac(nota[contadorDeAlunos,contadorDeNotas])
            bufferNotaFormatada <- "|" + copia(bufferEntradaNota, 1, 10)
            // * TO-DO
            bufferTotalizadorMediaIndividual <- bufferTotalizadorMediaIndividual + numpcarac(nota[contadorDeAlunos],[contadorDeNotas])

        fimpara

        mediaIndividual[contadorDeAlunos] <- bufferTotalizadorMediaIndividual / QUANTIDADE_NOTAS_INDIVIDUAL
        bufferMediaIndividual <- numpcarac(mediaIndividual[contadorDeAlunos])
        mediaGeral <- mediaGeral + mediaIndividual[contadorDeAlunos]
        bufferDadosDoAluno <- "|" + copia(bufferNomeAluno, 1, 30)
        bufferDadosDoAluno <- bufferDadosDoAluno + copia(bufferNotaFormatada, 1, 44) + "|"
        bufferDadosDoAluno <- bufferDadosDoAluno + copia(bufferMediaIndividual, 1, 10) + "|"
    fimpara

    mediaGeral <- mediaGeral / QUANTIDADE_ALUNOS

    escreval("|             NOME             |  NOTA 1  |  NOTA 2  |  NOTA 3  |  NOTA 4  |  MEDIA  |")
    para contadorDeAlunos de 1 ate QUANTIDADE_ALUNOS passo 1 faca
        escreval(dadosDoALuno[contadorDeAlunos])
    fimpara

    escreva("Media Total: " + numpcarac(mediaGeral))

fimalgoritmo
