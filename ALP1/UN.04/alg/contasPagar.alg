{*
 * Descrição            Ler os valores de contas a pagar de uma empresa ao longo
 *                      do ano, cada linha representa um m?s do ano e cada 
 *                      coluna uma semana do m?s. Mostra: total de contas a 
 *                      pagar por m?s e o total anual.
 *
 *
 * @pacote              ALP1/UN.04
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/27/2019
 * @version             v1.0.0
 *----------------------------------------------------------------------------*}
algoritmo "contasPagar"

const
    POSICAO_INICIAL = 1
    MESES = 12
    SEMANAS = 4

var
    contasPagar : vetor[POSICAO_INICIAL..MESES, POSICAO_INICIAL..SEMANAS] de real
    totalContasPagarMensal : vetor[POSICAO_INICIAL..MESES] de real
    totalContasPagarAnual : real
    temporario : real

    mes, semana : inteiro

inicio

    {*------------------------------------------------------------------------*}

    {* Inicializadores *}
    temporario <- 0,0
    totalContasPagarAnual <- 0,0

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    para mes de POSICAO_INICIAL ate MESES passo 1 faca
    
        para semana de POSICAO_INICIAL ate SEMANAS passo 1 faca

            escreva( "Informe o valor do mês " + numpcarac( mes ))
            escreva( " semana " + numpcarac( semana ) + " R$: ")
            leia(contasPagar[mes,semana])

        fimpara
    fimpara

    {*------------------------------------------------------------------------*}

    {* Processamento *}

    {* Calcular Total Mensal *}
    para mes de POSICAO_INICIAL ate MESES passo 1 faca
    
        para semana de POSICAO_INICIAL ate SEMANAS passo 1 faca

            temporario <- temporario + contasPagar[mes,semana]

        fimpara

        totalContasPagarMensal[mes] <- temporario
        temporario <- 0,0

    fimpara

    {* Calcular Total a pagar no ano *}
    para mes de POSICAO_INICIAL ate MESES passo 1 faca

        totalContasPagarAnual <- totalContasPagarAnual + totalContasPagarMensal[mes]

    fimpara

    limpatela

    {*------------------------------------------------------------------------*}

    {* Saida *}
    para mes de POSICAO_INICIAL ate MESES passo 1 faca
    
        escreva( "Mês: " + numpcarac( mes ) + " ")
        escreval( numpcarac( totalContasPagarMensal[mes] ))

    fimpara

    escreva( "Total do ano: " + numpcarac( totalContasPagarAnual ))

fimalgoritmo