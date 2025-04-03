/*
9. Investimento Financeiro
    Desenvolva um programa que simule um investimento financeiro, permitindo que o
usuário faça projeções sobre o valor do investimento ao longo do tempo. O programa
deve solicitar ao usuário as seguintes informações:

• O valor inicial do investimento;
• A taxa de juros anual (em porcentagem);
• O número de anos para o investimento.

    Com base nessas informações, o programa calculará e exibirá o valor do investimento
ao final de cada ano. O usuário poderá fazer múltiplas simulações de investimento até que
decida encerrar o programa.
*/

programa {
  funcao inicio() {
    real valor_inicial, taxa_juros, valor_final
    inteiro anos
    cadeia parada

    faca {
        escreva("\nDigite o valor inicial do investimento: R$ ")
        leia(valor_inicial)
        
        escreva("\nDigite a taxa de juros anual (em %): ")
        leia(taxa_juros)

        escreva("\nDigite o número de anos do investimento: ")
        leia(anos)

        taxa_juros = taxa_juros / 100

        valor_final = valor_inicial

        escreva("\nAno 0: R$ ", valor_final)

        para (inteiro i = 1; i <= anos; i++) {
            valor_final = valor_final * (1 + taxa_juros)
            escreva("\nAno ", i, ": R$ ", valor_final)
        }

        escreva("\nDeseja fazer outra simulação? (S/N): ")
        leia(parada)

    } enquanto (parada != 'S' e parada != 's')

    escreva("\nPrograma encerrado.")
  }
}
