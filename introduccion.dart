import 'dart:convert';
import 'dart:io';
import 'mates.dart';

void main() {
  // Hello World
  print("hello Dart");

  print("-------------------------------------------------------");
  // Variables
  var a = 10; //entero
  var b = 2.5; //decimal
  var c = true; //boolean
  var d = "hello"; //string
  var e = [1, 2, 3]; //list
  var f = {"name": "John"}; //mapa
  var g = {1, 2, 3}; //set
  print(a);
  print(b);
  print(c);
  print(d);
  print(e.last);
  print(f["name"]);
  print(g.first);

  print("-------------------------------------------------------");

  // Funciones
  var result = suma(3, 8);
  print(result);

  var par = isPar(6);
  var impar = isPar(1);
  print("$par vs $impar");

  // funciones importadas "mates.dart"

  print(circulo(4));

  print(area(4));

  print(resto(200, 15));

  print("-------------------------------------------------------");

  // Clases

  Inicializdor("Rubén").hello();

  var p = Point(4.0, 3.0);

  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= 5; j++) {
      if (p.x == i && p.y == j) {
        stdout.write(
            " * "); // esta funcion dart:io permite usar print sin salto de linea
      } else {
        stdout.write("   ");
      }
    }
    print("");
  }

  print(p);
  print("-------------------------------------------------------");

  //json

  // var url = 'https://rickandmortyapi.com/api/character/1';

  var jsonString = '''
    {"score1": 40},
    {"score3": 80},
    {"score2": 100},
    {"score4": 60},
    {"score5": 75},
  ''';

  var code = jsonEncode(jsonString);
  var real = jsonDecode(code);

  print("Puntuacion: ${real['score2']}");
}

bool isPar(int num) => num % 2 == 0;

class Inicializdor {
  String name;
  Inicializdor(this.name);

  void hello() {
    print("Hello $name");
  }
}

class Point {
  double x, y;
  Point(this.x, this.y);

  @override
  String toString() => '($x, $y)';

  void setX(double x) => this.x = x;
  void sety(double y) => this.y = y;
}
