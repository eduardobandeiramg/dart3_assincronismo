import "dart:async";
import "dart:io";
import "future.dart";
import 'streams.dart';

void main()async { //async na main para fins de teste de programa

// Vendo função futura demorar a executar:

// myFutureFunc(); //função assync: código continuar rodando enquanto tarefa é executada
// print("esperando");
// print("esperando");
// print("esperando");
// print("código esperando por entrada do usuário");
// String nome = stdin.readLineSync().toString(); // função sync: código para e espera

// Importando a classe "future"

// TipoFuturo.metodoFuturo().then((value) => print("Usando métodos do objeto Futuro a partir de uma função que retorna um objeto do tipo Future."));
// TipoFuturo objetoFuturo = TipoFuturo();
// objetoFuturo.atributoFuturo;
// objetoFuturo.metodoFuturo();
// objetoFuturo.metodoFuturo().then((value) => print(value)); // usando o método "then" do objeto (classe) Future
//

// Usando Stream:

// Stream prestencao = mandaAlgo(); //Inicia a Stream e coloca ela numa variável de controle
// StreamSubscription ouvindo = ouvinte1(prestencao); //Inicia o ouvinte e coloca ele numa variável de controle
// await Future.delayed(Duration(seconds: 6));
// ouvindo.pause();
// print("Evento pausado. Aguarde 4 segundos.");
// await Future.delayed(Duration(seconds: 4));
// ouvindo.resume();
// 

}



//Fora da main:
Future <int> myFutureFunc() async {
await Future.delayed (Duration(seconds: 3));
print ("l have a function in the Future!");
return 12;
}