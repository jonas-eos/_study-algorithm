{*
 * Descri��o    Cadastro de no m�ximo 15 professores
 *              contendo as seguintes informa��es:
 *              matr�cula, nome, forma��o e sal�rio
 *              Opera��es do algoritmo:
 *              1. cadastra os professores
 *              2. Imprime nome dos professores por ordem crescente de sal�rio
 *              3. pesquise um professor pela matr�cula mostra nome e forma��o
 *              outro. sai do programa.
 *
 *
 * @pacote      ALP1/UN.04
 * @autor       Jonas Evangelista (jonas.eos@outlook.com)
 * @desde       05/28/2019
 * @version     v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "professoresEscola"

const
    POSICAO_INICIAL = 1
    MAXIMO_FUNCIONAIO = 15
    CADASTRO = 1
    ORDERNAR = 2
    CONSULTAR = 3

tipo
    pessoa = registro
        formacao : caracter
        nome : caracter
        salario : real
        matricula : inteiro
    fimregistro

var
    professor : vetor[POSICAO_INICIAL..MAXIMO_FUNCIONAIO] de pessoa
    temporario : pessoa

    pause : caracter

    indice : inteiro
    menu : inteiro
    pesquisarPor : inteiro
    proximoIndice : inteiro
    registrado : inteiro

    registroFoiEncontrado : logico

inicio
    {*------------------------------------------------------------------------*}

    {* Inicizalizador *}

    registrado <- 0

    repita

    limpatela
    {* MENU *}
    escreval( "---------------------------------------------------" )
    escreval( "                        MENU                       " )
    escreval( "---------------------------------------------------" )
    escreval( " 1                       -            Novo Cadastro" )
    escreval( " 2                       -                  Ordenar" )
    escreval( " 3                       -                Consultar" )
    escreval( " OUTRO                   -                     Sair" )
    escreval( "---------------------------------------------------" )
    escreval( " Professores registrados: " + numpcarac( registrado ))
    escreval( "---------------------------------------------------" )
    escreval( "Escolha uma op��o: ")
    leia(menu)
    {* FIM DO MENU *}

    limpatela

    escolha (menu)

        caso CADASTRO

            escreval( "---------------------------------------------------" )
            escreval( "                      CADASTRO                     " )
            escreval( "---------------------------------------------------" )

            {* Valida se j� estorou o limite de registros *}
            se ( registrado = 15 ) entao
                
                escreval( "                       AVISO                       " )
                escreval( " Atingiu o m�ximo de 15 registros!" )
                
            senao

                registrado <- registrado + 1

                escreva("Nome do professor: ")
                leia(professor[registrado].nome)

                escreva("Forma��o: ")
                leia(professor[registrado].formacao)

                escreva("Sal�rio: ")
                leia(professor[registrado].salario)

                escreva("matricula: ")
                leia(professor[registrado].matricula)

                escreval( "Cadastro feito com sucesso!" )
            
            fimse

            escreval( "---------------------------------------------------" )
            escreval( "############## CADASTRO FINALIZADO! ###############" )
            escreval( "---------------------------------------------------" )

        caso ORDERNAR
            
            escreval( "---------------------------------------------------" )
            escreval( "                      ORDERNAR                     " )
            escreval( "---------------------------------------------------" )

            {* Verifica se existe algum registro na base *}
            se (registrado = 0) entao

                escreval( "N�o existe registro!" )

            senao
                se (registrado <> 1) entao
                    para indice de POSICAO_INICIAL ate registrado -1 passo 1 faca
                        para proximoIndice de indice + 1 ate registrado passo 1 faca
                            se (professor[indice].salario > professor[proximoIndice].salario) entao

                                temporario <- professor[indice]
                                professor[indice] <- professor[proximoIndice]
                                professor[proximoIndice] <- temporario

                            fimse
                        fimpara
                    fimpara
                fimse

                escreval( "Registros organizado com sucesso!" )
                escreval( "Professores cadastrados em ordem de sal�rio: ")

                para indice de POSICAO_INICIAL ate registrado passo 1 faca

                    escreval( professor[indice].nome )
                    
                fimpara
            fimse
            
            escreval( "---------------------------------------------------" )
            escreval( "############## ORDENA��O FINALIZADA ###############" )
            escreval( "---------------------------------------------------" )

        caso CONSULTAR

            escreval( "---------------------------------------------------" )
            escreval( "                     CONSULTAR                     " )
            escreval( "---------------------------------------------------" )

            {* Verifica se existe algum registro na base *}
            se (registrado = 0) entao

                escreval( "N�o existe registro!" )
            
            senao

                registroFoiEncontrado <- falso
                escreva( "Informe qual matr�cula deseja buscar: " )
                leia(pesquisarPor)

                para indice de POSICAO_INICIAL ate registrado passo 1 faca

                    se ( professor[indice].matricula = pesquisarPor ) entao

                        escreval( "Registro encontrado!" )
                        escreval( "Nome: " + professor[indice].nome )
                        escreval( "Forma��o: " + professor[indice].formacao )
                        registroFoiEncontrado <- verdadeiro
                        
                    senao
                        se ( (registroFoiEncontrado = falso) e (indice = registrado)) entao

                            escreval( "Registro n�o encontrado" )
                        fimse
                    
                    fimse
                fimpara
            fimse

            escreval( "---------------------------------------------------" )
            escreval( "############### CONSULTA FINALIZADA ###############" )
            escreval( "---------------------------------------------------" )

        {* Finaliza o algoritmo *}
        outrocaso

            interrompa

        fimescolha
        
        escreva( "Aperte enter para continuar" )
        leia(pause)

    ate (falso)
    
fimalgoritmo