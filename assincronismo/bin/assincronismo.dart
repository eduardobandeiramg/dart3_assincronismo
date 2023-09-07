import "dart:async";
import "dart:io";
import "future.dart";
import 'streams.dart';

void main(){
// Vendo função futura demorar a executar:

// myFutureFunc(); //função assync: código continuar rodando enquanto tarefa é executada
// print("esperando");
// print("esperando");
// print("esperando");
// print("código esperando por entrada do usuário");
// String nome = stdin.readLineSync().toString(); // função sync: código para e espera

// Importando a classe "future"

// TipoFuturo objetoFuturo = TipoFuturo();
// objetoFuturo.atributoFuturo;
// objetoFuturo.metodoFuturo();
// objetoFuturo.metodoFuturo().then((value) => print(value)); // usando o método "then" do objeto (classe) Future
//

// Usando Stream:
//Streams recebendo algo:
mandaAlgo();
outraStream();
ouveAPrimeira();
ouveASegunda();
}





//Fora da main:
Future <int> myFutureFunc() async {
await Future.delayed (Duration(seconds: 3));
print ("l have a function in the Future!");
return 12;


}