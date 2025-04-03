/*
6. Simulador de Caixa Eletrônico
Desenvolva um programa que simule um caixa eletrônico, permitindo que o usuário
faça saques e depósitos em sua conta bancária. O programa deverá seguir as seguintes
regras:

1. Saque: O programa deve solicitar o valor a ser sacado e verificar se o valor é
válido, ou seja, se está dentro do saldo disponível na conta.

    Se o valor do saque for válido, o programa deve realizar o saque, exibir
uma mensagem de confirmação e mostrar o saldo atualizado.
    Se o valor do saque for maior que o saldo disponível ou inválido (ex.: valor
negativo), o programa deve informar que o saque não pode ser realizado e
solicitar um novo valor de saque.

2. Depósito: O programa deve permitir ao usuário realizar depósitos, solicitando o
valor a ser depositado.

    Se o valor do depósito for válido (ex.: maior que zero), o programa deve
adicionar o valor ao saldo da conta, exibir uma mensagem de confirmação
e mostrar o saldo atualizado.
    Se o valor do depósito for inválido (ex.: valor negativo ou zero), o
programa deve informar ao usuário e solicitar um novo valor de depósito.

3. Repetição: O usuário pode optar por realizar múltiplas transações (saques e/ou
depósitos) até que decida encerrar o programa. O programa deve perguntar ao
usuário se ele deseja realizar outra transação após cada operação (Ex.: "Você
deseja realizar outra operação? (S/N)").

Instruções de saída:
    O programa deve exibir mensagens de confirmação após cada operação de saque
ou depósito, juntamente com o saldo atualizado.
    Se o saque ou depósito não puder ser realizado devido a valores inválidos, o
programa deve informar o motivo e solicitar um novo valor.
    O usuário deve poder encerrar o programa a qualquer momento, escolhendo a
opção "N" quando perguntado se deseja realizar outra operação.
*/

programa {
  funcao inicio() {
    real saldo = 0.0, valor = 0.0
    cadeia encerrar
    inteiro opcao
    
    faca {
        escreva("\nEscolha uma operação:")
        escreva("\n1 - Saque")
        escreva("\n2 - Depósito")
        escreva("\n3 - Sair")
        escreva("\nOpção: ")
        leia(opcao)

        se (opcao == 1) {
            faca{
                escreva("\nDigite o valor a ser sacado: ")
                leia(valor)

                se(valor > 0 e valor <= saldo){
                    saldo = saldo - valor
                    escreva("\nSaque de R$ ", valor, " realizado.")
                    escreva("\nSaldo atualizado: R$ ", saldo)
                    pare
                } senao {
                    escreva("\nSaldo Insuficiente, tente novamente.")
                }
            } enquanto(verdadeiro)
        } senao se (opcao == 2) {
            faca {
                escreva("\nDigite o valor à ser depositado: ")
                leia(valor)

                se (valor > 0) {
                    saldo = saldo + valor
                    escreva("\nDepósito de R$ ", valor, " realizado.")
                    escreva("\nSaldo atualizado: R$ ", saldo)
                    pare
                } senao {
                    escreva("\nO valor do depósito deve ser maior que zero.")
                }
            } enquanto (verdadeiro)
        } senao se (opcao == 3) {
            escreva("\nPrograma finalizado.")
            pare
        } senao {
            escreva("\nOpção inválida.")
        }

        escreva("\nDeseja encerrar o programa? (S/N): ")
        leia(encerrar)

        se (encerrar == 'S' ou encerrar == 's') {
            escreva("\nPrograma finalizado.\n")
            pare
        } senao se(encerrar == 'N' ou encerrar == 'n') {
            escreva("\nPrograma continuado.\n")
        } senao {
            escreva("\nPrograma continuado.\n")
        }
    
    } enquanto(verdadeiro)
  }
}