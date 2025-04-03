/*
4. Índice de Massa Corpórea (IMC)
    O Índice de Massa Corpórea (IMC) é um valor calculado baseado na altura e no peso
de uma pessoa. De acordo com o valor do IMC, podemos classificar o indivíduo dentro
de certas faixas:

• Menor que 18.5: Abaixo do peso
• Entre 18.5 e 24.9: Peso ideal
• Entre 25 e 29.9: Sobrepeso
• Entre 30 e 39.9: Obesidade
• 40 ou mais: Obesidade mórbida

    Solicite a altura e o peso do usuário, calcule o seu IMC e mostre a classificação. O
IMC é calculado pela expressão peso/altura² (peso dividido pelo quadrado da altura).
*/

programa {
  funcao inicio() {
    real peso, altura, imc

    escreva("Insira a altura à ser calculara: ")
    leia(altura)
    escreva("\nInsira o peso à ser calculado: ")
    leia(peso)

    imc = peso / (altura * altura)

    se (imc  < 18.5) {
        escreva("Abaixo do peso")
    } senao se (imc >= 18.5 e imc <=24.9) {
        escreva("Peso ideal")
    } senao se (imc >= 25 e imc <=29.9) {
        escreva("Sobrepeso")
    } senao se (imc >= 30 e imc <=39.9) {
        escreva("Obesidade")
    } senao se (imc >= 40) {
        escreva("Obesidade mórbida")
    }
  }
}
