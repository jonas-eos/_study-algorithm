{*
 * Descrição        L? nomes de 5 alunos e também suas quatro notas
 *                  bimestrais. Calcula a média de cada aluno e apresenta
 *                  os nomes classificados em ordem crescente de média.
 *
 *
 * @pacote          ALP1/UN.04
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/27/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "alunosAprovados"

const
    PERSONALIZADO = 5
    BIMESTRAL = 4
    TRIMESTRAL = 3
    QUANTIDADE_DE_NOTAS = BIMESTRAL
    POSICAO_INICIAL = 1
    POSICAO_FINAL = 5
    MEDIA_PARA_APROVAR = 7

tipo
    estudante = registro
        nome : caracter
        nota1, nota2, nota3, nota4, media : real
fimregistro

var
    aluno : vetor[POSICAO_INICIAL..POSICAO_FINAL] de estudante
    registroTemporario : estudante
    contador, proximaPosicao : inteiro
    temporario : real

inicio

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    para contador de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        escreva("Informe o nome do aluno: ")
        leia(aluno[contador].nome)

        escreva("Informe o nota 1: ")
        leia(aluno[contador].nota1)

        escreva("Informe o nota 2: ")
        leia(aluno[contador].nota2)

        escreva("Informe o nota 3: ")
        leia(aluno[contador].nota3)

        escreva("Informe o nota 4: ")
        leia(aluno[contador].nota4)

        limpatela

    fimpara

    {*------------------------------------------------------------------------*}

    {* Processamento - Calcular a média *}
    para contador de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        temporario <- aluno[contador].nota1 + aluno[contador].nota2
        temporario <- temporario + aluno[contador].nota3 + aluno[contador].nota4
        aluno[contador].media <- temporario / QUANTIDADE_DE_NOTAS

    fimpara

    {* Ordena os registro em ordem crescente *}
    para contador de POSICAO_INICIAL ate POSICAO_FINAL -1 passo 1 faca

        para proximaPosicao de contador + 1 ate POSICAO_FINAL passo 1 faca

            se (aluno[contador].media > aluno[proximaPosicao].media) entao

                registroTemporario <- aluno[proximaPosicao]
                aluno[proximaPosicao] <- aluno[contador]
                aluno[contador] <- registroTemporario
                
            fimse
        fimpara
    fimpara

    {*------------------------------------------------------------------------*}

    {* Saida *}
    limpatela
    escreval("Alunos aprovados")
    para contador de POSICAO_INICIAL ate POSICAO_FINAL passo 1 faca

        se(aluno[contador].media > MEDIA_PARA_APROVAR) entao
        
            escreva(aluno[contador].nome + "   " )
            escreval(numpcarac(aluno[contador].media))
            
        fimse
    fimpara

fimalgoritmo