{*
 * Calcula o consumo efetuado
 * Calcula a autonomia que ainda resta para abastecer
 * Ler Capacidade do tanque
 * Ler quantidade de litros abastecidos
 * Ler quilometragem percorrida desde o último abastecimento
 *}

 algoritmo "operacoes_combistuvel"

    var

        capacidadeTanque : real
        consumoEfetuado : real
        litrosAbastecido : real
        quilometragemPecorrida : real
        autonomiaReal : real
        autonomiaQueRestava : real

        combustivelEmTanquePreAbastecimento : real

    inicio

        escreval("Informe a capacidade do tanque")
        leia(capacidadeTanque)

        escreval("Informe quanto abasteceu")
        leia(litrosAbastecido)

        consumoEfetuado <- litrosAbastecidos

        escreval("Informe a quilometragem pecorrida desde o último abastecimento)
        leia(quilometragemPecorrida)

        combustivelEmTanquePreAbastecimento <- capacidadeTanque - consumoEfetuado

        autonomiaReal <- quilometragemPecorrida / combustivelEmTanquePreAbastecimento

        autonomiaQueRestava <- autonomiaReal * consumoEfetuado

        escreval("Seu consumo desde de o último abastecimento: " + numpcarac(consumoEfetuado))
        escreval("Autonomia que ainda restava: " + numpcarac(autonomiaQueRestava) + " Km/l")

    fimalgoritmo