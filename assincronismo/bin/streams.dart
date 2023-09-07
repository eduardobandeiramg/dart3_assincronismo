import 'dart:async';
/// Streams:
/// TIPO ASSÍNCRONO (permite que o app continue), que não termina quando recebe algo de fora. 
/// Ou seja, diferente do Future, consegue "retornar" várias coisas até que o intervalo pré determinado termine.
/// Seu fim é determinado por um intervalo específico e não quando "retorna" algo.
/// 
/// Precisa de um subscriber, que "ouvirá" o que está recebendo. 
/// Esse subscriber é um objeto da classe "StreamSubscription".
/// Ele "ouvirá" a Stream ao chamar o método "listen" do objeto Stream.
/// (streamQualquer.listen() define o Subscriber)
/// 
/// Métodos do objeto Stream: .listen , .onError , .onDone , .map , ...
/// Métodos do objeto StreamSubscription: .pause , .continue , .cancel

//Criando um objeto Stream
Stream objetostream = Stream.empty();

//Criando uma função que retornará um objeto do tipo Stream
Stream mandaAlgo() async*{
  int intervalo = 1;
  while(intervalo <= 10){ //condição de parada (intervalo) da stream
    await Future.delayed(Duration(seconds: 2));
    yield intervalo++;
  }
}

//Criando uma função que retornará um objeto do tipo StreamSubscription
StreamSubscription ouvinte1(Stream toprestano) {//permite executar os métodos de subscriber fora dela, 
                                                //pois retorna uma stream subscription.
  return toprestano.listen((event) {print("Rebendo da Stream: iteração número $event");});
}
//Criando uma função que criafá uma StreamSubscription, mas nao retornará um objeto deste tipo
//Não é recomendado pois, assim, não é possível manipular o Subscriber (executar funções importantes deste método,
//como pause, continue e break. 
void ouvinte2(toprestano){ //não permite executar nenhum método fora da função, pois não retorna nada.
  toprestano().listen((event) {print("ouvinte da segunda stream"); });
}

// Métodos do subscriber:
// .pause
// .resume

// Métodos da função que retorna um objeto do tipo Stream:
// listen() -> recebe os valores da stream
// onError() -> trata um erro na stream
// onDone() -> realiza algo depois que a stream termina
// ...
// funcao.

/// Observações:
/// 1- Dart por padrão não permite mais de um Subscriber para uma mesma Stream. Para isso, deve-se usar o método
/// ".asBroadcastStream" ao criar a Stream. 