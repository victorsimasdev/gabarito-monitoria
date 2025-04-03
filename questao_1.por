/*
1. Organização de Evento Escolar
    A professora Joana está organizando uma feira de ciências na escola. Para isso, ela e
outros 5 professores vão dividir os custos igualmente. Eles vão comprar camisetas
personalizadas, cartolinas e canetas coloridas para a decoração. Escreva um programa que
receba como entrada o valor das camisetas, a quantidade e o valor unitário de cada
material (cartolina e canetas), calcule e exiba o valor total e o valor a ser pago por cada
professor.

Entradas esperadas:
• Valor das camisetas
• Quantidade de cartolinas e valor unitário
• Quantidade de canetas e valor unitário

Saída esperada:
• Total gasto
• Valor por professor
*/

programa {
  funcao inicio() {
    real valor_camisetas, valor_cartolinas, valor_canetas, total
    inteiro quantidade_cartolinas, quantidade_canetas

    escreva("Insira o valor das camisetas: \nR$ ")
    leia(valor_camisetas)
    escreva("Insira a quantidade das cartolinas: ")
    leia(quantidade_cartolinas)
    escreva("Insira o valor das cartolinas: \nR$ ")
    leia(valor_cartolinas)
    escreva("Insira a quantidade das canetas: ")
    leia(quantidade_canetas)
    escreva("Insira o valor das canetas: \nR$ ")
    leia(valor_canetas)

    total = valor_camisetas + (quantidade_cartolinas * valor_cartolinas) + (quantidade_canetas * valor_canetas)
    escreva("O valor total será de R$ ", total)
    escreva("\nO valor para cada professor será de R$ ", total / 6) /* valor total / quantidade de professores | Joana + 5 professores */

  }
}
