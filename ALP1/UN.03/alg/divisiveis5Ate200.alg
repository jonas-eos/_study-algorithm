{*
 * Descrição        Mostra todos os números divisíveis por 5 de um alcançe de 1 
 *                  a 200
 *
 *
 * @pacote          ALP1/UN.03
 * @autor           Jonas Evangelista (jonas.eos@outlook.com)
 * @desde           05/26/2016
 * @version         v1.0.1
 *----------------------------------------------------------------------------*}
algoritmo "divisiveis5Ate200"

var
    contador : inteiro

inicio

    {*------------------------------------------------------------------------*}

    {* Processamento / Saida *}
    para contador de 1 ate 200 passo 1 faca

        se (contador mod 5 = 0) entao

            escreval("Divisível por 5: " + numpcarac(contador))
        
        fimse

    fimpara

fimalgoritmo