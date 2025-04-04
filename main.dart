import 'livro.dart';
import 'biblioteca.dart';
import 'usuario.dart';

void main(List<String> args) {
  Livro livro = new Livro("Os três porquinhos", "AutorGenerico", 2000);
  Usuario usuario = new Usuario(
    "João Paulo",
    "64812354874",
    "Rua fim do Mundo, numero 71",
  );
  

  usuario.PrintAtributos();
  livro.PrintAtributos();
}
