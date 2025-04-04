import 'usuario.dart';
import 'livro.dart';

class Biblioteca {
  // DEFININDO OS ATRIBUTOS DA CLASSE
  String nome;
  Map<Usuario, Livro> LivrosEmprestados = {};
  List<Livro> LivroNoEstoque = [];


  // CRIANDO O CONSTRUTOR

  Biblioteca(this.nome) {}

  // FUNÇÃO UTILIZADA PARA EMPRESTAR OS LIVROS

  void EmprestarLivro(Usuario usuario, Livro livro) {
    bool emprestado = false;
    LivroNoEstoque.forEach((Livro estoque) {
      if (estoque.titulo == livro.titulo) {
        emprestado = true;
        if (VerificarLivroEmprestado(estoque) == false) {
          estoque.emprestado = true;
          usuario.livrosemprestado.add(livro);
          LivrosEmprestados.addAll({usuario: livro});
          print(
            "O Livro: ${estoque.titulo}, agora esta sobe posse do Usuario: ${usuario.nome}",
          );
        } else {
          print(
            "Esse livro esta presente no estoque, porem ja foi emprestado, tente outro",
          );
        }
      }
    });
    if (emprestado == false) {
      print("A Biblioteca nao possui esse livro no estoque");
    }
  }

  // FUNÇÃO PARA IMPRIMIR OS LIVROS QUE FORAM EMPRESTADOS

  void PrintLivrosEmprestados() {
    int numero = 0;
    LivrosEmprestados.forEach((Usuario usuario, Livro livro) {
      numero += 1;
      print("$numero - Usuario: ${usuario.nome}, Livro: ${livro.titulo}");
    });
  }

  // FUNÇÃO PARA IMPRIMIR OS LIVROS NO ESTOQUE

  void PrintLivrosNoEstoque() {
    int numero = 0;
    print("Os seguintes Livros estao no catalogo: \n");
    LivroNoEstoque.forEach((Livro livros) {
      numero += 1;
      print(
        "$numero - ${livros.titulo}, situacao: ${(livros.emprestado) ? "Emprestado" : "No Estoque"}",
      );
    });
  }

  // FUNÇÃO UTILIZADA POR OUTRAS FUNÇÕES PARA VERIFICAR A DISPONIBILIDADE DOS LIVROS

  bool VerificarLivroEmprestado(Livro verificarlivro) {
    bool Emprestado = false;
    LivrosEmprestados.forEach((Usuario usuario, Livro livro) {
      if (verificarlivro.titulo == livro.titulo) {
        Emprestado = true;
      }
    });
    return false;
  }

  // FUNÇÃO PARA ADICIONAR O LIVRO NO ESTOQUE DA BIBLIOTECA

  void AdicionarLivroNoEstoque(Livro addlivro) {
    LivroNoEstoque.add(addlivro);
    print(
      "\nO Livro: " +
          addlivro.titulo +
          "Foi adicionado para o catalogo da Biblioteca.",
    );
  }

  // FUNÇÃO PARA IMPRIMIR OS USUARIOS PRESENTES NO CADASTRO DA BIBLIOTECA

  void PrintUsuarioCadastrado() {
    print("A Biblioteca: ${nome} Possui os seguintes usuarios: ");
    LivrosEmprestados.forEach((Usuario usuario, Livro livro) {
      usuario.PrintAtributos();
    });
  }
}
