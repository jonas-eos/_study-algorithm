{*
 * Descrição            Calcular o volume de uma esfera
 *
 * @pacote              LdP-CdAeEdD\Unidade3
 * @autor               Jonas Evangelista (jonas.eos@outlook.com)
 * @desde               05/08/2019
 * @version             v2.0.0
 *----------------------------------------------------------------------------*}
Algoritmo "CalVolumeEsfera"

Var
    volume, raio, raioAoCubo : real

Inicio

    {*------------------------------------------------------------------------*}

    {* Entrada *}
    escreva("Informe o valor do raio: ")
    leia(raio)

    limpatela

    {*------------------------------------------------------------------------*}

    {* Processamento *}

    raioAoCubo <- (exp(raio, 3))
    volume <- ((4 * PI * raioAoCubo) / 3)

    {*------------------------------------------------------------------------*}

    {* Saida *}
    escreva("Volume = ", volume)

Fimalgoritmo