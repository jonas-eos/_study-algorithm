{*
 * Calcula o consumo efetuado
 * Calcula a autonomia que ainda resta para abastecer
 * Ler Capacidade do tanque
 * Ler quantidade de litros abastecidos
 * Ler quilometragem percorrida desde o �ltimo abastecimento
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

        consumoEfetuado <- litrosAbastecido

        escreval("Informe a quilometragem pecorrida desde o �ltimo abastecimento")
        leia(quilometragemPecorrida)

        combustivelEmTanquePreAbastecimento <- capacidadeTanque - consumoEfetuado

        autonomiaReal <- quilometragemPecorrida / consumoEfetuado

        autonomiaQueRestava <- autonomiaReal * combustivelEmTanquePreAbastecimento

        escreval("Seu consumo desde de o �ltimo abastecimento: " + numpcarac(consumoEfetuado))
        escreval("Autonomia que ainda restava: " + numpcarac(autonomiaQueRestava) + " Km/l")

    fimalgoritmo