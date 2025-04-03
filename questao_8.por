/*
8. Calculadora de Fatorial
Escreva um programa que solicite ao usuário um número inteiro positivo e calcule o
fatorial desse número. Em seguida, exiba o resultado. Repita o processo até que o usuário
decida parar
*/

programa {
  funcao inicio() {
    inteiro entrada, fatorial = 1
    cadeia parada
    faca {
        escreva("\nInsira o número a ser calculado o fatorial: ")
        leia(entrada)

        se (entrada >=0){
            fatorial = 1
            se (entrada == 0 ou entrada == 1){
                escreva("\nO fatorial de ", entrada, " é 1.")
            } senao {
                para (inteiro i = entrada ;i > 1; i -= 1){
                    fatorial = fatorial * i
                }
                escreva("\nO fatorial de ", entrada, " é ", fatorial)
            }
        }
        escreva("\nDeseja encerrar o programa? (S/N): ")
        leia(parada)
    } enquanto (parada != 'S' e parada != 's')
  }
}