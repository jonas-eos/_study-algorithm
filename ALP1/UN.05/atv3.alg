{*
 * Descrição        Le um caractere e retorna 1 se for uma consoante
 *                  e 0 se for vogal.
 *
 * @pacote          ALP1/UN.05
 * @autor           Jonas Evangelista ( jonas.eos@outlook.com )
 * @desde           05/30/2019
 * @version         v1.0.0
 *----------------------------------------------------------------------------*}
 algoritmo "atv3"

const
    LETRA_EH_CONSOANTE = 1
    LETRA_NAO_EH_CONSOANTE = 0
    PRIMEIRA_POSICAO = 1
    APENAS_UMA_POSICAO = 1
    VOGAIS = "AEIOU"
    TOTAL_VOGAIS = 5

var
    letra : caracter

{* -------------------------------------------------------------------------- *}
{##############################################################################}
{* FUNÇÃO *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

funcao obterLetra() : caracter
    inicio

        retorne copia( letra, PRIMEIRA_POSICAO, APENAS_UMA_POSICAO)

    fimfuncao

{* -------------------------------------------------------------------------- *}

funcao ehConsoante ( ) : inteiro
    var
        posicao : inteiro
        resultado : inteiro

    inicio
    
        resultado <- LETRA_EH_CONSOANTE

        para posicao de PRIMEIRA_POSICAO ate TOTAL_VOGAIS passo APENAS_UMA_POSICAO faca
            se ( maiusc( obterLetra( ) ) = copia( VOGAIS, posicao, APENAS_UMA_POSICAO )) entao
                
                resultado <- LETRA_NAO_EH_CONSOANTE
                
            fimse
            
        fimpara
        
        se (resultado = LETRA_EH_CONSOANTE) entao
            
            retorne LETRA_EH_CONSOANTE
                
        senao
            
            retorne LETRA_NAO_EH_CONSOANTE
                
        fimse
    fimfuncao

{* -------------------------------------------------------------------------- *}
{##############################################################################}
{* PROCEDIMENTOS *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

procedimento validarSeEhConsoante ( )
    inicio

        escreval( numpcarac( ehConsoante() ))

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento definirLetra ( )
    inicio

        leia( letra )

    fimprocedimento

{* -------------------------------------------------------------------------- *}

procedimento carregarPrograma ( )
    inicio

        escreval( "Caso digite alguma palavra, será considerado apenas " )
        escreval( "a primeira letra" )
        escreva( "Informe uma letra: ")

    fimprocedimento

{* -------------------------------------------------------------------------- *}
{##############################################################################}
{* PROGRAMA PRINCIPAL *}
{##############################################################################}
{* -------------------------------------------------------------------------- *}

inicio

    carregarPrograma()
    definirLetra()
    validarSeEhConsoante()

fimalgoritmo