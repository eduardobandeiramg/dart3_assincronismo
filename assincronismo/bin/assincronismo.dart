import "dart:io";
import "future.dart";

void main() {
// Vendo função futura demorar a executar:

// myFutureFunc(); //função assync: código continuar rodando enquanto tarefa é executada
// print("esperando");
// print("esperando");
// print("esperando");
// print("código esperando por entrada do usuário");
// String nome = stdin.readLineSync().toString(); // função sync: código para e espera

// Importando a classe "future"

TipoFuturo objetoFuturo = TipoFuturo();
objetoFuturo.atributoFuturo;
objetoFuturo.metodoFuturo();

}

Future <int> myFutureFunc() async {
await Future.delayed (Duration(seconds: 3));
print ("l have a function in the Future!");
return 12;
}