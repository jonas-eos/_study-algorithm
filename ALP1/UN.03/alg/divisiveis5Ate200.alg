{*
 * Descri��o        Mostra todos os n�meros divis�veis por 5 de um alcan�e de 1 
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

            escreval("Divis�vel por 5: " + numpcarac(contador))
        
        fimse

    fimpara

fimalgoritmo