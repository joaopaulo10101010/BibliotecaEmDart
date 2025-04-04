import 'livro.dart';

class Usuario {
  String nome;
  String cpf;
  String endereco;
  List<Livro> livrosemprestado = [];

  Usuario(this.nome, this.cpf, this.endereco) {}

  void PrintAtributos() {
    int numero = 0;
    print(
      "\nUsuario: $nome \nDetentor do CPF: $cpf \nResidente no endereço: $endereco \nPossui os seguintes livros:",
    );
    livrosemprestado.forEach((Livro livem) {
      numero += 1;
      print("$numero - ${livem.titulo}");
    });
  }

  void PegarEmprestadoLivro(Livro livro) {
    livrosemprestado.add(livro);
  }
}
