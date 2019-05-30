{*
 * Descrição        Realiza o cadastro de N registro
 *                  TOTAL_REGISTRO define o total de registro a ser cadastrado
 *                  Programa tem menu com 6 opções onde:
 *                  1 - cadastra todos produtos
 *                  2 - Pesquisa produto pelo código
 *                  3 - Classifica em ordem de Descrição
 *                  4 - Classificar por ordem de código
 *                  5 - Apresentar todos os registros
 *                  outro - Sair do programa
 *
 *
 * @pacote          ALP1/UN.04
 * @autor           Jonas Evangelista ( jonas.eos@outlook.com )
 * @desde           05/29/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "atv1"

const
    POSICAO_INICIAL = 1
    TOTAL_REGISTRO = 3 {* Altere este campo caso queira testar com mais registros *}
    
    OPCAO_CADASTRAR = 1
    OPCAO_PESQUISAR_POR_CODIGO = 2
    OPCAO_CLASSIFICAR_POR_DESCRICAO = 3
    OPCAO_CLASSIFICAR_POR_CODIGO = 4
    OPCAO_MOSTRAR_REGISTROS = 5
    
    FINALIZA = verdadeiro
    NAO_FINALIZA = falso
    
    LINHAS = "------------------------------------------------------------"

tipo
    cadastro_produto = registro
        codigo : inteiro
        descricao : caracter
        preco : real
        unidade : caracter
    fimregistro

var
    produto : vetor[POSICAO_INICIAL..TOTAL_REGISTRO] de cadastro_produto

    encerrarPrograma : logico
    cadastroFeito : logico

{##############################################################################}
{* FUNÇOES *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

funcao obterCodigoProduto ( indice : inteiro ) : inteiro
    inicio

        retorne produto[indice].codigo

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao obterDescricaoProduto ( indice : inteiro ) : caracter
    inicio

        retorne produto[indice].descricao

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao obterUnidadeProduto ( indice : inteiro ) : caracter
    inicio

        retorne produto[indice].unidade

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao obterPrecoProduto ( indice : inteiro ) : real
    inicio

        retorne produto[indice].preco

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

funcao produtoExiste(indice : inteiro; codigo : inteiro) : logico
    inicio

        se ( obterCodigoProduto( indice ) = codigo ) entao
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

            caso OPCAO_PESQUISAR_POR_CODIGO
                programaConsulta()
                retorne NAO_FINALIZA

            caso OPCAO_CLASSIFICAR_POR_DESCRICAO
                programaClassificarPorDescricao()
                retorne NAO_FINALIZA

            caso OPCAO_CLASSIFICAR_POR_CODIGO
                programaClassificarPorCodigo()
                retorne NAO_FINALIZA

            caso OPCAO_MOSTRAR_REGISTROS
                programaMostrarRegistros()
                retorne NAO_FINALIZA
                
            outrocaso
                escreval ( "Finalizado!" )
                retorne FINALIZA

        fimescolha
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

procedimento mostrarProduto(indice : inteiro)
    inicio

        escreval( "Código do produto:" + numpcarac( obterCodigoProduto( indice )))
        escreval( "Descrição: " + obterDescricaoProduto( indice ))
        escreval( "Unidade: " + obterUnidadeProduto( indice ))
        escreval( "preco: " + numpcarac( obterPrecoProduto( indice )))

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento menuMostrarRegistros()
    inicio

        mudacor( "azul", "fundos" )
        escreval( LINHAS )
        escreval( "                    MOTRAR REGISTROS                   " )
        escreval( LINHAS )

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento programaMostrarRegistros()
    var
        indice : inteiro
        sairDoPrograma : inteiro

    inicio

        indice <- POSICAO_INICIAL
        sairDoPrograma <- 0

        

        enquanto ( indice <= TOTAL_REGISTRO ) e ( sairDoPrograma <> 1 ) faca

            limpatela()
            menuMostrarRegistros()

            se ( existeRegistro ) entao

                mostrarProduto(indice)

                acrescentar(indice)

                escreval( LINHAS )
                escreval( "Digite 1 para finalizar, ou enter para continuar" )
                leia(sairDoPrograma)
            
            senao

                escreval( "Não existe registro cadastrado para mostrar!" )
                escreval( LINHAS )

                sairDoPrograma <- 1

                pausarTela()

            fimse
        fimenquanto
    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento menuClassificarPorCodigo()
    inicio
    
        mudacor( "azul","fundos" )
        escreval( LINHAS )
        escreval( "               CLASSIFICAR POR CODIGO               " )
        escreval( LINHAS )
    
    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento programaClassificarPorCodigo()
    var
        indice, proximoIndice : inteiro
        temporario : cadastro_produto
        
    inicio
    
        limpatela()
        
        menuClassificarPorCodigo

        se ( existeRegistro ) entao

            para indice de POSICAO_INICIAL ate TOTAL_REGISTRO - 1 passo 1 faca
                para proximoIndice de indice + 1 ate TOTAL_REGISTRO passo 1 faca
                    se ( obterCodigoProduto(indice) > obterCodigoProduto(proximoIndice) ) entao

                        temporario <- produto[indice]
                        produto[indice] <- produto[proximoIndice]
                        produto[proximoIndice] <- temporario

                    fimse
                fimpara
            fimpara

            escreval( "Produtos ordenado por código!" )

        senao

            escreval( "Não existe registro cadastrado para ordenar!" )

        fimse
        
        escreval( LINHAS )
        pausarTela()
    
    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento menuClassificarPorDescricao()
    inicio
    
        mudacor( "azul","fundos" )
        escreval( LINHAS )
        escreval( "                CLASSIFICAR POR DESCRIÇÃO              " )
        escreval( LINHAS )
    
    fimprocedimento


{* -------------------------------------------------------------------------- *}

procedimento programaClassificarPorDescricao()
    var
        indice, proximoIndice : inteiro
        temporario : cadastro_produto
        
    inicio
    
        limpatela()
        
        menuClassificarPorDescricao

        se ( existeRegistro ) entao

            para indice de POSICAO_INICIAL ate TOTAL_REGISTRO - 1 passo 1 faca
                para proximoIndice de indice + 1 ate TOTAL_REGISTRO passo 1 faca
                    se ( obterDescricaoProduto(indice) > obterDescricaoProduto(proximoIndice) ) entao

                        temporario <- produto[indice]
                        produto[indice] <- produto[proximoIndice]
                        produto[proximoIndice] <- temporario

                    fimse
                fimpara
            fimpara
        
        escreval( "Produtos ordenado por descrição!" )

        senao

            escreval( "Não existe registro cadastrado para ordenar!" )

        fimse
        
        escreval( LINHAS )
        pausarTela()
    
    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento menuConsulta()
    inicio

        mudacor( "azul", "fundos" )
        escreval( LINHAS )
        escreval( "                        CONSULTA                       " )
        escreval( LINHAS )

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento programaConsulta()
    var
        indice : inteiro
        codigoPesquisar : inteiro
        produtoEncontrado : logico

    inicio

        produtoEncontrado <- falso
        indice <- POSICAO_INICIAL

        limpatela

        menuConsulta()

        se ( existeRegistro ) entao

            escreva( "Informe o código do produto para consultar: " )
            leia(codigoPesquisar)

            enquanto ((indice <= TOTAL_REGISTRO) e NAO(produtoEncontrado)) faca

                produtoEncontrado <- produtoExiste(indice, codigoPesquisar)

                se ( produtoEncontrado ) entao

                escreval( LINHAS )
                escreval( "           Produto localizado, dados abaixo            " )
                escreval( LINHAS )

                    mostrarProduto(indice)

                fimse

                acrescentar( indice )

            fimenquanto

            se ( nao produtoEncontrado ) entao

                    escreval( "Produto não localizado!" )

            fimse
        senao

            escreval( "Não existe registro cadastrado!" )

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

        para indice de POSICAO_INICIAL ate TOTAL_REGISTRO passo 1 faca

            limpatela()

            menuCadastro()

            escreva( "Código do produto: " )
            leia( produto[indice].codigo )

            escreva( "Descrição: " )
            leia( produto[indice].descricao )

            escreva( "Unidade: " )
            leia( produto[indice].unidade )

            escreva( "Preço: " )
            leia( produto[indice].preco )

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
        escreval( "2               -            Pesquisar por código do produto" )
        escreval( "3               -                  Classificar por descrição" )
        escreval( "4               -                     Classificar por código" )
        escreval( "5               -                  Motrar todos os registros" )
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