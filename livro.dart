import 'usuario.dart';
import 'biblioteca.dart';


class Livro {
  String titulo;
  String autor;
  int anoPublicacao;
  bool emprestado;

  Livro(this.titulo, this.autor, this.anoPublicacao) : emprestado = false;

  void PrintAtributos() {
    print(
      "\nTitulo: $titulo \nAutor: $autor\nAno de Publicação: $anoPublicacao \nSituação Emprestado: $emprestado",
    );
  }

  String GetAllAtributos() {
    return "Titulo: $titulo \nAutor: $autor\nAno de Publicação: $anoPublicacao";
  }
}
