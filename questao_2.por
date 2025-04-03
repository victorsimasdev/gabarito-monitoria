/*
2. Campo de Futebol
    Desenvolva um programa que leia a largura e a altura de um campo de futebol, calcule
e exiba a área total do campo e a quantidade de grama sintética necessária para cobrir
toda a sua superfície. Considere que cada rolo de grama sintética cobre uma área de 5
metros quadrados (m²).
*/

programa {
  funcao inicio() {
    real largura, altura, area_total
    inteiro rolos_grama

    escreva("Insira a largura do campo de futebol: ")
    leia(largura)
    escreva("Insira a altura do campo de futebol: ")
    leia(altura)

    area_total = largura * altura
    se (area_total % 5 == 0) {
        rolos_grama = area_total / 5
    } senao {
        rolos_grama = (area_total / 5) + 1
    }

    escreva("\nA área do gramado é de: ", area_total)
    escreva("\nO total de rolos de grama será de: ", rolos_grama)
  }
}
