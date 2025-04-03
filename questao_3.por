/*
3. Média Ponderada Aluno
    Desenvolva um programa que seja capaz de calcular a média ponderada de um aluno.
Inicialmente solicite o nome e as três notas do aluno, logo após, calcule e exiba na tela a
média. Na média ponderada considere os seguintes pesos nas notas: 2, 3 e 5. Essa é a
fórmula para calcular a média.
    
            mediafinal = ((n1 * 2) + (n2 * 3) + (n3 * 5)) / 10

    Logo após verifique e informe o status do aluno na disciplina baseando nas
seguintes informações:
• Média até 4.9: reprovado
• Média entre 5.0 e 6.9: recuperação
• Média 7.0 ou superior: aprovado
*/

programa {
  funcao inicio() {
    real nota1, nota2, nota3, media
    escreva("\nInsira a Nota 1 (peso 2) do aluno: ")
    leia(nota1)
    escreva("\nInsira a Nota 2 (peso 3) do aluno: ")
    leia(nota2)
    escreva("\nInsira a Nota 3 (peso 5) do aluno: ")
    leia(nota3)

    media = ((nota1 * 2) + (nota2 * 3) + (nota3 * 5)) / 10
    escreva("\nA média ponderada do aluno é de: ", media)

    se (media < 5.0) {
        escreva("\nReprovado")
    } senao se (media < 7.0) {
        escreva("\nRecuperação")
    } senao se (media >= 7.0) {
        escreva("\nAprovado")
    }
  }
}
