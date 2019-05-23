{*
 * Descrição            Imprime o nome de 20 alunos,  4 notas de cada e a média de
 *                      de cada aluno e informe a média geral da turma
 *
 * @pacote              ALP1/UN.03
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/23/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "dadosSalaDeAula"

const
    ESPACOS_NOME = "                               "
    ESPACOS_NOTAS = "          "
    QUANTIDADE_ALUNOS = 20
    QUANTIDADE_NOTAS_INDIVIDUAL = 4

var
    bufferDadosDoAluno, bufferEntradaNota : caracter
    bufferNomeAluno, bufferNotaFormatada: caracter
    bufferTotalizadorMediaIndividual : real
    bufferMediaIndividual : caracter
    bufferTemporario : caracter
    
    contadorDeAlunos, contadorDeNotas : inteiro

    dadosDoAluno : vetor [1.. QUANTIDADE_ALUNOS] de caracter

    mediaGeral : real
    mediaIndividual : vetor[1..QUANTIDADE_ALUNOS] de real
    
    nome : vetor[1..QUANTIDADE_ALUNOS] de caracter
    nota : vetor[1..QUANTIDADE_ALUNOS, 1..QUANTIDADE_NOTAS_INDIVIDUAL] de inteiro

inicio

    {*------------------------------------------------------------------------*}

    {* Constructor *}
    mediaGeral <- 0.0

    {*------------------------------------------------------------------------*}

    {* Entrada de Alunos*}
    para contadorDeAlunos de 1 ate QUANTIDADE_ALUNOS passo 1 faca

        escreva("Informe o nome do aluno numero " + numpcarac(contadorDeAlunos))
        leia(nome[contadorDeAlunos])
        
        limpatela
        
        {*------------------------------------------------------------------------*}

        {* Processamento de Alunos*}
        bufferNomeAluno <- nome[contadorDeAlunos] + ESPACOS_NOME
        bufferNotaFormatada <- "|"
        bufferTotalizadorMediaIndividual <- 0
        
        escreval("Aluno: " + nome[contadorDeAlunos])

        {*------------------------------------------------------------------------*}

        {* Entrada de notas*}
        para contadorDeNotas de 1 ate QUANTIDADE_NOTAS_INDIVIDUAL passo 1 faca
        
            escreva("Nota " + numpcarac(contadorDeNotas) + ": ")
            leia(nota[contadorDeAlunos,contadorDeNotas])
            
        {*------------------------------------------------------------------------*}

        {* Processamento de notas*}
            bufferTemporario <- numpcarac(nota[contadorDeAlunos,contadorDeNotas])
            bufferEntradaNota <- "   " + bufferTemporario
            bufferEntradaNota <- bufferEntradaNota + ESPACOS_NOTAS

            bufferTemporario <- copia(bufferEntradaNota, 1, 10)
            bufferNotaFormatada <- bufferNotaFormatada + bufferTemporario + "|"

            bufferTotalizadorMediaIndividual <- bufferTotalizadorMediaIndividual + nota[contadorDeAlunos, contadorDeNotas]

        fimpara

        mediaIndividual[contadorDeAlunos] <- bufferTotalizadorMediaIndividual / QUANTIDADE_NOTAS_INDIVIDUAL
        
        bufferTemporario <- numpcarac(mediaIndividual[contadorDeAlunos])
        bufferMediaIndividual <- "   " + bufferTemporario + ESPACOS_NOTAS
        
        mediaGeral <- mediaGeral + mediaIndividual[contadorDeAlunos]
        
        bufferDadosDoAluno <- "|" + copia(bufferNomeAluno, 1, 30)
        bufferTemporario <- copia(bufferNotaFormatada, 1, 44)
        bufferDadosDoAluno <- bufferDadosDoAluno + bufferTemporario + "|"
        bufferTemporario <- copia(bufferMediaIndividual, 1, 10)
        bufferDadosDoAluno <- bufferDadosDoAluno + bufferTemporario + "|"
        dadosDoAluno[contadorDeAlunos] <- bufferDadosDoAluno

    fimpara

    mediaGeral <- mediaGeral / QUANTIDADE_ALUNOS
    limpatela

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreval("|             NOME             |  NOTA 1  |  NOTA 2  |  NOTA 3  |  NOTA 4  |   MEDIA  |")
    escreval("|-------------------------------------------------------------------------------------|")
    
    para contadorDeAlunos de 1 ate QUANTIDADE_ALUNOS passo 1 faca
    
        escreval(dadosDoALuno[contadorDeAlunos])
        
    fimpara

    escreva("Media Total: " + numpcarac(mediaGeral))

fimalgoritmo
