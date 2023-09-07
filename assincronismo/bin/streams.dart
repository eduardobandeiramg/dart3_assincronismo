/// Streams:
/// TIPO ASSÍNCRONO (permite que o app continue), que não termina quando recebe algo de fora. 
/// Ou seja, diferente do Future, consegue "retornar" várias coisas até que o intervalo pré determinado termine.
/// 
/// Precisa de um subscriber, que "ouvirá" o que está recebendo.
/// Esse subscriber é um objeto da classe "StreamSubscription".
/// Ele receberá a função stream chamando o método "listan".
/// Exemplo:
///


Stream mandaAlgo() async*{
  int intervalo = 0;

  while(intervalo < 5){
    yield intervalo++;
  }
}

Stream outraStream() async* {
  int intervalo2 = 0;

  while(intervalo2 < 15){
    yield (intervalo2 + 3);
  }
}

void ouveAPrimeira(){
  mandaAlgo().listen((event) {print("ouvinte da primeira Stream");});
}

void ouveASegunda(){
  outraStream().listen((event) {print("ouvinte da segunda stream"); });
}




class TipoStream{

// Criando um método Stream, que vai "catar" e "lançar" algo toda vez que recebe, durante um intervalo pré-determinado:
static Stream exemploStream()async*{
  int i = 0;
  while(i < 5){
    await Future.delayed(Duration(seconds: 2));
    yield i++;
  }
}

void ouvinte(Stream ){
  exemploStream().listen((event) { });
}

// Métodos da função que retorna um objeto do tipo Stream:
// listen() -> recebe os valores da stream
// onError() -> trata um erro na stream
// onDone() -> realiza algo depois que a stream termina
// ...
// funcao.



}