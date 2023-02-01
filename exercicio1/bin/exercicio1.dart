import 'dart:io';
class Pessoa {
  double peso, altura;
  Pessoa(this.peso, this. altura);
  double calcularImc()=>  peso/(altura*altura);
}
void main(){
  stdout.write("Insira seu peso:");
  double? peso = double?.parse(stdin.readLineSync()!);
  stdout.write("Insira sua altura:");
  double? altura = double?.parse(stdin.readLineSync()!);
  Pessoa pessoa = Pessoa(peso,altura);
  print("Seu IMC é: ${pessoa.calcularImc()}");
}