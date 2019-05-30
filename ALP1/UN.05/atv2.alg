{*
 * Descrição        Cadastro de n clientes
 *                  nome, idade, altura e peso
 *                  O menu têm as opções
 *                  1. Cadastrar os 10 registros.
 *                  2. Ordenar os registros por idade.
 *                  3. Apresentar a média de peso das pessoas.
 *                  4. Apresentar o nome das pessoas com peso acima de 50kg.
 *                  5. Sair do programa.
 *
 * @pacote          ALP1/UN.05
 * @autor           Jonas Evangelista ( jonas.eos@outlook.com )
 * @desde           05/29/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
 algoritmo "atv2"

 const
    POSICAO_INICIAL = 1
    REGISTRO_MAXIMO = 3

    OPCAO_CADASTRAR = 1
    OPCAO_ORDERNAR_POR_IDADE = 2
    OPCAO_MOSTRAR_MEDIA_PESO = 3
    OPCAO_MOSTRAR_ACIMA_50KG = 4

    PESO_MINIMO = 50

    FINALIZA = verdadeiro
    NAO_FINALIZA = falso

    LINHAS = "------------------------------------------------------------"

 tipo
    pessoa = registro
        nome : caracter
        idade : inteiro
        altura : real
        peso : real
    fimregistro

 var
    cliente : vetor[POSICAO_INICIAL..REGISTRO_MAXIMO] de pessoa

    encerrarPrograma : logico
    cadastroFeito : logico

{##############################################################################}
{* FUNÇOES *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

funcao obterNomeCliente ( indice : inteiro ) : caracter
    inicio

        retorne cliente[indice].nome

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao obterIdadeCliente ( indice : inteiro ) : inteiro
    inicio

        retorne cliente[indice].idade

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao obterAlturaCliente ( indice : inteiro ) : real
    inicio

        retorne cliente[indice].altura

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao obterPesoCliente ( indice : inteiro ) : real
    inicio

        retorne cliente[indice].peso

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao somarPeso ( totalPeso, pesoAtual : real ) : real
    inicio

        retorne ( totalPeso + pesoAtual )

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao calcularPesoMedio ( somaTotal : real ) : real
    inicio

        retorne ( somaTotal / REGISTRO_MAXIMO )

    fimfuncao
    
{* -------------------------------------------------------------------------- *}

funcao existeRegistro() : logico
    inicio

        se ( cadastroFeito ) entao

            retorne verdadeiro

        senao

            retorne falso

        fimse

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao ativarMenu() : inteiro
    var
        opcaoEscolhida : inteiro

    inicio
        mudacor( "preto", "fundos" )

        mostrarMenu()

        leia( opcaoEscolhida )

        retorne opcaoEscolhida

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao chamarPrograma(opcao : inteiro) : logico
    inicio

        escolha(opcao)
        
            caso OPCAO_CADASTRAR
                programaCadastro()
                retorne NAO_FINALIZA

            caso OPCAO_ORDERNAR_POR_IDADE
                programaOrdernarPorIdade()
                retorne NAO_FINALIZA
                
            caso OPCAO_MOSTRAR_MEDIA_PESO
                programaMostrarMediaPeso()
                retorne NAO_FINALIZA

            caso OPCAO_MOSTRAR_ACIMA_50KG
                programaMostrarAcima50Kg()
                retorne NAO_FINALIZA

            outrocaso
                escreval ( "Finalizado!" )
                retorne FINALIZA

        fimescolha
    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao pesoEhAcimaDe50( indice : inteiro ) : logico
    inicio
        se ( cliente[indice].peso > PESO_MINIMO ) entao

            retorne verdadeiro

        senao

            retorne falso

        fimse
    fimfuncao

{* -------------------------------------------------------------------------- *}
{##############################################################################}
{* PROCEDIMENTOS *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

procedimento acrescentar(var valor : inteiro)
    inicio

          valor <- valor + 1

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento pausarTela ()
    var
        pausar : caracter

    inicio

        escreva("Precione enter para continuar...")
        leia(pausar)

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento menuMostraMediaPeso()
    inicio
    
        mudacor( "azul","fundos" )
        escreval( LINHAS )
        escreval( "             MEDIA DE PESO DAS PESSOAS              " )
        escreval( LINHAS )
    
    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento programaMostrarMediaPeso()
    var
        pesoMedio : real
        somaPesoTotal : real
        indice : inteiro

    inicio

        somaPesoTotal <- 0

        limpatela

        menuMostraMediaPeso()
        
        se ( existeRegistro ) entao

            para indice de POSICAO_INICIAL ate REGISTRO_MAXIMO passo 1 faca

                somaPesoTotal <- somarPeso(somaPesoTotal, obterPesoCliente( indice ))

            fimpara

            pesoMedio <- calcularPesoMedio( somaPesoTotal )

            escreval( "Média de peso das pessoas inforamda: " + numpcarac( pesoMedio ))

        senao

            escreval( "Não existe cliente cadastrado para calcular média de peso!" )

        fimse

            escreval( LINHAS )
            pausarTela()

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento menuOrdernarPorIdade()
    inicio
    
        mudacor( "azul","fundos" )
        escreval( LINHAS )
        escreval( "                ORDERNAR POR IRDADE                 " )
        escreval( LINHAS )
    
    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento programaOrdernarPorIdade()
    var
        indice, proximoIndice : inteiro
        temporario : pessoa
        
    inicio
    
        limpatela()
        
        menuOrdernarPorIdade()

        se ( existeRegistro ) entao

            para indice de POSICAO_INICIAL ate REGISTRO_MAXIMO - 1 passo 1 faca
                para proximoIndice de indice + 1 ate REGISTRO_MAXIMO passo 1 faca
                    se ( obterIdadeCliente(indice) > obterIdadeCliente(proximoIndice) ) entao

                        temporario <- cliente[indice]
                        cliente[indice] <- cliente[proximoIndice]
                        cliente[proximoIndice] <- temporario

                    fimse
                fimpara
            fimpara

            escreval( "Clientes ordenado por idade!!" )

        senao

            escreval( "Não existe cliente cadastrado para ordenar!" )

        fimse
        
        escreval( LINHAS )
        pausarTela()
    
    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento menuMostrarAcima50Kg()
    inicio

        mudacor( "azul","fundos" )
        escreval( LINHAS )
        escreval( "             MOSTRAR PESSOAS ACIMA DE 50 KG            " )
        escreval( LINHAS )

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento programaMostrarAcima50Kg()
    var
        indice : inteiro
        existeClienteAcima50Kg : logico

    inicio

        indice <- POSICAO_INICIAL
        existeClienteAcima50Kg <- falso
        
        limpatela()

        menuMostrarAcima50Kg()

        se ( existeRegistro ) entao
        
            para indice de POSICAO_INICIAL ate REGISTRO_MAXIMO passo 1 faca

                se ( pesoEhAcimaDe50( indice ) ) entao
                
                    existeClienteAcima50Kg <- verdadeiro

                    escreval( obterNomeCliente( indice ))

                fimse
                
                acrescentar(indice)
                
            fimpara
            
            se ( nao existeClienteAcima50KG ) entao

                escreval( "Não existe cliente acima de 50 Kg." )

            fimse
        
        senao

            escreval( "Não existe registro cadastrado para mostrar!" )

        fimse
        
        escreval( LINHAS )

        pausarTela()

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento menuCadastro()
    inicio

        mudacor( "azul","fundos" )
        escreval( LINHAS )
        escreval( "                        CADASTRO                       " )
        escreval( LINHAS )

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento programaCadastro()
    var
        indice : inteiro

    inicio

        para indice de POSICAO_INICIAL ate REGISTRO_MAXIMO passo 1 faca

            limpatela()

            menuCadastro()

            escreva( "Nome do cliente: " )
            leia( cliente[indice].nome )

            escreva( "Idade: " )
            leia( cliente[indice].idade )

            escreva( "Altura: " )
            leia( cliente[indice].altura )

            escreva( "Peso: " )
            leia( cliente[indice].peso )

            cadastroFeito <- verdadeiro

        fimpara

        escreval( LINHAS )
        pausarTela()

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento mostrarMenu()
    inicio

        limpatela

        escreval( LINHAS )
        escreval("                           MENU                            ")
        escreval( LINHAS )
        escreval( "1               -                                  Cadastrar" )
        escreval( "2               -                          Ordenar por idade" )
        escreval( "3               -                 Apresentar a média de peso" )
        escreval( "4               -        Apresentar as pessoas acima de 50KG" )
        escreval( "Outro           -                                       Sair" )
        escreval( LINHAS )
        escreval( "Informe a operação desejada: " )

    fimprocedimento

{* -------------------------------------------------------------------------- *}
{##############################################################################}
{* Inicio do programa *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

 inicio

    cadastroFeito <- falso

    repita

        encerrarPrograma <- chamarPrograma( ativarMenu )

    ate ( encerrarPrograma )

 fimalgoritmo