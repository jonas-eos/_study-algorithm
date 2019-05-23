{*
 * Descrição            Captura a as notas de determinados alunos e calcula a
 *                      média de todos alunos, depois é informado quantos foram
 *                      aprovados e reprovados
 *
 * @pacote              ALP1/UN.03
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/22/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "aprovadosEreprovados"

const
    MEDIA_PARA_APROVAR = 7

var
    aprovados, reprovados : inteiro
    contadorDeAlunos, contadorDeNotas : inteiro
    media, notaDoAluno : real
    quantidadeDeAlunos, quantidadeDeNotas : inteiro

inicio
    {*------------------------------------------------------------------------*}

    {* Constructor *}
    aprovados <- 0
    reprovados <- 0
    
    {*------------------------------------------------------------------------*}

    {* Entrada *}
    escreva("Informe a quantidade de notas: ")
    leia(quantidadeDeNotas)
    escreva("Informe quantos alunos são: ")
    leia(quantidadeDeAlunos)

    limpatela
    
    {*------------------------------------------------------------------------*}

    {* Processamento *}
    para contadorDeAlunos de 1 ate quantidadeDeAlunos passo 1 faca

        media <- 0
        
        {* Entrada das notas e calculo da média do aluno atual no contador*}
        para contadorDeNotas de 1 ate QuantidadeDeNotas passo 1 faca

            escreva("Informe a nota da prova número ")
            escreva(numpcarac(contadorDeNotas) + " do aluno ")
            escreva(numpcarac(contadorDeAlunos) + " ")
            leia(notaDoAluno)

            limpatela

            media <- media + notaDoAluno

        fimpara

        media <- (media / quantidadeDeNotas)

        {* Validar se o aluno atual no contador foi aprovado *}
        se (media >= MEDIA_PARA_APROVAR) entao

            aprovados <- aprovados + 1

        senao

            reprovados <- reprovados + 1

        fimse

    fimpara
    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreval("Aprovados :" + numpcarac(aprovados))
    escreva("Reprovados " + numpcarac(reprovados))

fimalgoritmo