/*
7. Homens e Mulheres Cadastrados
Faça um programa que leia a idade e o sexo de 5 pessoas, mostrando no final:
a) Quantos homens foram cadastrados;
b) A idade da mulher mais velha;
c) A média de idade do grupo (ambos os sexos);
d) Quantas mulheres tem mais de 20 anos.
*/

programa {
  funcao inicio() {
    inteiro contador = 1, idade, mulher_mais_velha = 0, idade_media = 0, mulheres_acima_20 = 0, quantidade_homens = 0
    caractere sexo

    enquanto(contador < 6){
        escreva("Insira a idade da pessoa ", contador, ": \n")
        leia(idade)
        faca{
        escreva("Insira o sexo da pessoa (H/M) ", contador, ": \n")
        leia(sexo)
        } enquanto (sexo != 'H' e sexo != 'h' e sexo != 'M' e sexo != 'm')

        se (sexo == 'h' ou sexo == 'H') {
            quantidade_homens += 1
        } senao {
            se(idade > mulher_mais_velha){
                mulher_mais_velha = idade
            }
            se (idade > 20){
                mulheres_acima_20 += 1
            }
        }

        idade_media += idade

        contador += 1
    }
    escreva(quantidade_homens, " homens foram cadastrados.\n")
    escreva("A idade da mulher mais velha é: ", mulher_mais_velha, " anos.\n")
    escreva("A idade média do grupo é de: ", idade_media / 5, " anos.\n")
    escreva(mulheres_acima_20, " mulheres possuem mais de 20 anos.\n")

  }
}