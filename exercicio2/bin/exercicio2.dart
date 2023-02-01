import 'dart:io';
class Aluno {
  double nota1, nota2, nota3;

  Aluno(this.nota1, this.nota2, this.nota3);

  double calcularMedia() {
    return (nota1 * 2 + nota2 * 3 + nota3 * 5) / 10;
  }
  void situacaoAluno() {
    double media = calcularMedia();
    if (media >= 6) {
      print("Aluno aprovado! Média: $media");
    } else if (media < 4) {
      print("Aluno reprovado! Média: $media");
    } else {
      stdout.write("Aluno em recuperação! sua média foi: $media \nInsira a nota da prova de recuperação:");
      double notaRecuperacao = double.parse(stdin.readLineSync()!);
      double mediaFinal = (media + notaRecuperacao) / 2;
      if (mediaFinal < 5.5) {
        print("Aluno reprovado! Média final: $mediaFinal");
      } else {
        print("Aluno aprovado! Média final: $mediaFinal");
      }
    }
  }
}
void main() {
  stdout.write("Insira a primeira nota, segunda nota, terceira nota respectivamente: ");
  double nota1 = double.parse(stdin.readLineSync()!);
  double nota2 = double.parse(stdin.readLineSync()!);
  double nota3 = double.parse(stdin.readLineSync()!);
  Aluno aluno = Aluno(nota1, nota2, nota3);
  aluno.situacaoAluno();
}
