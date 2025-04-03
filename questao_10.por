/*
10 - Controle de Presença em Curso Gratuito de Tecnologia

Um centro comunitário está oferecendo um curso gratuito de introdução à tecnologia, com duração total de 10 encontros presenciais. Para receber o certificado de conclusão, cada aluno precisa ter participado de pelo menos 6 encontros.
Você foi convidado a desenvolver um programa que ajude os organizadores a controlar a presença dos alunos e a verificar quem tem direito ao certificado.

O programa deve:
• Receber o nome de vários alunos (o número total de alunos será informado no
início).
• Para cada aluno, solicitar a quantidade de encontros frequentados (um número
de 0 a 10).

Ao final, exibir:
• A lista dos alunos que têm direito ao certificado.
• A porcentagem de alunos aprovados (ou seja, que compareceram a 4 encontros
ou mais).

Exemplo de entrada esperada:
• Número total de alunos: 3

• Nome: Ana — Presenças: 9
• Nome: João — Presenças: 6
• Nome: Lucas — Presenças: 8

Exemplo de saída esperada:
Alunos com direito ao certificado:
- Ana
- Lucas
Porcentagem de alunos certificados: 66.67%
*/

programa {
  funcao inicio() {
    inteiro total_alunos, presencas, alunos_certificados = 0
    cadeia nome

    escreva("\nDigite o número total de alunos: ")
    leia(total_alunos)
    cadeia aprovados[total_alunos]

    para (inteiro i = 0; i < total_alunos; i++) {
        escreva("\nNome do aluno ", i+1, ": ")
        leia(nome)
        
        escreva("Número de presenças (0 a 10): ")
        leia(presencas)

        se (presencas >= 6) {
            aprovados[alunos_certificados] = nome
            alunos_certificados += 1
        }
    }

    escreva("\nAlunos com direito ao certificado:")
    se (alunos_certificados == 0) {
        escreva("\nNenhum aluno foi aprovado.")
    } senao {
        para (inteiro i = 0; i < alunos_certificados; i++) {
            escreva("\n- ", aprovados[i])
        }
    }

    real percentual_aprovados = (alunos_certificados * 100.0) / total_alunos
    escreva("\n\nPorcentagem de alunos certificados: ", percentual_aprovados, "%")
  }
}