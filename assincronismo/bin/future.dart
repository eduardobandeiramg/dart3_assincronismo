class TipoFuturo {
  // Atributo futuro:
  Future atributoFuturo = Future(() {
    print("Atributo futuro executado");
    return "Retorno do atributo";
  }).then((value) => print(value)); //Ao criar objetos do tipo futuro, é possível determinar o que será feito quando houver um retorno. Normalmente, implementa-se uma condição para retornar algo quando o valor passar a ser diferente de nulo.

  // Método futuro:
  Future metodoFuturo() async {
    print("Esperando 6 segundos...");
    await Future.delayed(Duration(seconds: 5));
    print("Método futuro executado");
    return "Retorno do método futuro";
  }

  //Métodos estáticos da classe future:
  void mostrandoFutureDelayed(){
    Future.delayed(Duration(seconds: 5));
    Future.delayed(Duration(days: 1));
  }
}
