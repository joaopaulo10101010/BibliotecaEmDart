import 'usuario.dart';
import 'Livro.dart';

class Biblioteca {
  String nome;
  Map<Usuario, Livro> LivrosEmprestados = {};

  Biblioteca(this.nome) {}

  void EmprestarLivro(Usuario usuario, Livro livro) {
    livro.emprestado = true;
    Map<Usuario, Livro> temporario = {usuario: livro};
    LivrosEmprestados.addAll(temporario);
    usuario.livrosemprestado.add(livro);
  }

  void PrintLivrosEmprestados() {
    print(LivrosEmprestados);
  }
}
