/// Ao usar Future, pode-se optar tanto pela utilização de objetos quanto funções. 
/// O código fica mais claro ao se usar funções.
/// Caso seja necessária a utilização de atributos e métodos de um OBJETO Future, 
/// Pode se usar funções que retornam esse tipo de objeto (neste caso os métodos do objeto ficariam junto à chamada da função),
/// ou usar diretamente objetos (nesse caso os métodos usados do objeto podem ficar junto da declaração).
/// Seria uma questão de modularidade.´
/// 


//Objeto Future:


class TipoFuturo{
  // Atributo futuro:
  Future atributoFuturo = Future(() async{ //variável que armazena um objeto do tipo Future
    print("Atributo futuro executado");
    await Future.delayed(Duration(seconds:5));
    return "Retorno do atributo";
  }).then((value) => print(value)); //Ao criar objetos do tipo futuro, é possível determinar o que será feito quando o futuro
                                    //se completar. Ele se completará quando a condição do "await" se concretizar.

  // Método futuro:
  Future metodoFuturo() async { //assinc é necessário para que o método seja de fato assíncrono (permita pedir pro código fluir enquanto faz algo)
    print("Esperando 6 segundos...");
    await Future.delayed(Duration(seconds: 5)); //await é necessário para que o método só termine sua execução após certa condição ser cumprida
    print("Método futuro executado");
    return "Retorno do método futuro";
  }// Como o método retorna um objeto do tipo futuro, é possível usar o método "then" da classe Future ao chamar esse método

  //Métodos estáticos da classe future:
  void mostrandoFutureDelayed(){
    Future.delayed(Duration(seconds: 5));
    Future.delayed(Duration(days: 1));
    //outros métodos: Future.
  }

  //Métodos de um objeto(não estáticos) Future: - normalmente incluídos após funções que retornam esse tipo de objeto. 
  //.then -> Executa após espera se concluir
  //.onError -> Trata exceções que podem ser lançadas por métodos
  //.whenComplete -> 
  //outros métodos: objetoFuture.
  //(pode-se usar try catch em vez disso)
}
