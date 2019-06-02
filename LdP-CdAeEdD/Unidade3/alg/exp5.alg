{*
 * Ler de nascimento (dia, mes, ano)
 * Ler data atual(dia, mes, ano)
 * Calcular a idade em dias, meses e anos
 *}

 algoritmo "idade_separadas"
    const
        MESES_TOTAL_NO_ANO = 12
        MEDIA_DIAS_ANO = 365.25
        MEDIA_DIAS_MES = 30.4375

    var
        diaNascimento : inteiro
        mesNascimento : inteiro
        anoNascimento : inteiro
        diaAtual : inteiro
        mesAtual : inteiro
        anoAtual : inteiro
        idadeEmAnos : real
        idadeEmMeses : real
        idadeEmDias : real

    inicio

        escreval("Informe dia de nascimento")
        leia(diaNascimento)

        escreval("Informe o mês de nascimento")
        leia(mesNascimento)

        escreval("Informe o ano de nascimento")
        leia(anoNascimento)

        escreval("Informe o dia atual")
        leia(diaAtual)

        escreval("Informe o mês atual")
        leia(mesAtual)

        escreval("Informe o ano atual")
        leia(anoAtual)

        idadeEmDias <- anoAtual - anoNascimento
        idadeEmDias <- idadeEmDias * MESES_TOTAL_NO_ANO
        idadeEmDias <- idadeEmDias * MEDIA_DIAS_ANO
        idadeEmDias <- idadeEmDias - ((MESES_TOTAL_NO_ANO - mesNascimento) * MEDIA_DIAS_MES)
        idadeEmDias <- idadeEmDias + (mesNascimento * MEDIA_DIAS_MES)

        idadeEmMeses <- idadeEmDias / MEDIA_DIAS_ANO

        idadeEmAnos <- idadeEmMeses / MESES_TOTAL_NO_ANO

        escreval("Idade em dias:" + numpcarac(idadeEmDias))
        escreval("Idade em meses:" + numpcarac(idadeEmMeses))
        escreval("idade em anos:" + numpcarac(idadeEmAnos))

    fimalgoritmo