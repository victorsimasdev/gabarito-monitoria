/*
5. Programa de Pontuação por Atividade Física
    Um aplicativo de vida saudável está incentivando as pessoas a se exercitarem mais,
oferecendo pontos que podem ser trocados por dinheiro em lojas parceiras. O sistema de
pontuação é baseado no número de horas de atividade física realizadas no mês. Veja como
funciona:

• Até 10 horas de atividade no mês: ganha-se 2 pontos por hora.
• De 10 a 20 horas de atividade no mês: ganha-se 5 pontos por hora.
• Mais de 20 horas de atividade no mês: ganha-se 10 pontos por hora.

    Escreva um programa que solicite ao usuário quantas horas de atividade física ele teve
no mês e, em seguida, calcule e exiba quantos pontos ele obteve.
*/


programa {
  funcao inicio() {
    real horas, pontos

    escreva("Insira a quantidade de horas de atividade física você teve: ")
    leia(horas)

    se (horas < 10) {
        pontos = horas * 2
        escreva("Você ganhou um total de: ", pontos, " pontos")
    } senao se (horas >= 10 e horas < 20) {
        pontos = horas * 5
        escreva("Você ganhou um total de: ", pontos, " pontos")
    } senao se (horas >= 20) {
        pontos = horas * 10
        escreva("Você ganhou um total de: ", pontos, " pontos")
    }
  }
}
