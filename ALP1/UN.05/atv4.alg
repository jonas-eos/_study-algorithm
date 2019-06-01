{*
 * Descrição        Apresenta a somatória dos N primeiros números pares
 *                  definidos pelo usuário
 *
 *
 * @pacote          ALP1/UN.05
 * @autor           Jonas Evangelista ( jonas.eos@outlook.com )
 * @desde           05/30/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "atv4"

    const    
        FATOR_PAR = 2

    var

{* -------------------------------------------------------------------------- *}
{##############################################################################}
{* FUNÇÃO *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

funcao forPar ( numero : inteiro ) : logico
    inicio

        se ( numero % FATOR_PAR = 0 ) entao

            retorne verdadeiro

        senao

            retorne falso

        fimse

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao lerNumero ( ) : inteiro
    var
        valor : inteiro

    inicio

        leia( valor )

        retorne valor

    fimfuncao

{* -------------------------------------------------------------------------- *}
    
funcao pegarProximoNumeroPar( numero : inteiro ) : inteiro  
    var
        contador : inteiro
    inicio

        repita

            numero <- numero - 1

        ate ( forpar( numero ) )
    
        retorne numero
        
    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao somarPares( numero, soma : inteiro ) : inteiro
    var
        proximoNumero : inteiro

    inicio

        proximoNumero <- pegarProximoNumeroPar( numero )

        se ( proximoNumero <> 0 ) entao

            retorne somarPares( proximoNumero, (soma + numero ))

        senao

                retorne soma + numero

        fimse
    fimfuncao

{* -------------------------------------------------------------------------- *}
{##############################################################################}
{* PROCEDIMENTOS *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}    

procedimento apresentarFuncao( )
    inicio

        escreval( "Será calculado os N primeiros números pares informados" )
        escreva( "Informe um número inteiro: " )

    fimprocedimento

{* -------------------------------------------------------------------------- *}
{##############################################################################}
{* PROGRAMA PRINCIPAL *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

    inicio

        apresentarFuncao()
        escreva( numpcarac( somarPares(lerNumero(), 0 ) ))

    fimalgoritmo

