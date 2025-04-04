import 'biblioteca.dart';
import 'livro.dart';
import 'usuario.dart';

void main(List<String> args) {
  // Criando os Objetos Livros, para que eles existão nesse programa:

  Livro livro = new Livro("Os três porquinhos", "AutorGenerico", 2000);
  Livro livro2 = new Livro("Chapeuzinho Vermelho", "AutorNovato", 2015);
  Livro livro3 = new Livro(
    "Ronaldo e suas Esfiras",
    "Pedrinho de Noronha",
    2077,
  );
  Livro livro4 = new Livro("O Menino do Pijama Arcuiles", "Sr. Barriga", 1027);

  // Adicionando os Usuarios Existentes:

  Usuario usuario = new Usuario(
    "João Paulo",
    "64812354874",
    "Rua fim do Mundo, numero 71",
  );

  Usuario usuario2 = new Usuario(
    "Ana Julia dos Santos",
    "64811411452",
    "Rua dos Burgueses, numero 1",
  );

  // Criando a Biblioteca que possui os livros:

  Biblioteca biblioteca = new Biblioteca("Alexandria");

  // Adicionando os 3 livros criados na Biblioteca, para que ela possa emprestar esses livros:

  biblioteca.AdicionarLivroNoEstoque(livro);
  biblioteca.AdicionarLivroNoEstoque(livro2);
  biblioteca.AdicionarLivroNoEstoque(livro3);
  biblioteca.AdicionarLivroNoEstoque(livro4);

  // Mostrando os livros no Estoque da Biblioteca:

  biblioteca.PrintLivrosNoEstoque();

  // Fazendo a Biblioteca emprestar esses livros:

  biblioteca.EmprestarLivro(usuario, livro2);
  biblioteca.EmprestarLivro(usuario, livro);
  biblioteca.EmprestarLivro(usuario2, livro4);

  // Mostrando novamente o Estoque da Biblioteca:

  biblioteca.PrintLivrosNoEstoque();

  // Imprimindo os Usuarios que estão cadastrados na Biblioteca

  biblioteca.PrintUsuarioCadastrado();
}
