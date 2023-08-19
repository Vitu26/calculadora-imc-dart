import 'dart:io';


class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}


double calcularIMC(Pessoa pessoa) {
    return pessoa.peso / (pessoa.altura * pessoa.altura);
  }

void main() {
  print("Digite o nome:");
  String nome = stdin.readLineSync() ?? "";

  print("Digite o peso (em kg):");
  double peso = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  print("Digite a altura (em metros):");
  double altura = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  Pessoa pessoa = Pessoa(nome, peso, altura);


  double imc = calcularIMC(pessoa);

  print("${pessoa.nome}, seu IMC é: $imc");
}

