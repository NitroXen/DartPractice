import 'dart:convert';
import 'dart:io';
import 'rick.dart';

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

  // Ciclos

  while (a <= 15) {
    print("Hello");
    a++;
  }

  do {
    print("Bye");
    a--;
  } while (a > 5);

  for (var i in [1, 2, 5, 8, 7, 4, 9, 6, 3, 0]) {
    print(i * 6);
  }

  print("-------------------------------------------------------");

  // Funciones
  var result = sum(5, 10);
  print(result);

  var par = isPar(6);
  var impar = isPar(1);
  print("$par vs $impar");

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

  var url = 'https://rickandmortyapi.com/api/character/1';

  var jsonString = '''
  [
    {"score": 40},
    {"score": 80},
    {"score": 100},
    {"score": 60},
  ]
    ''';

  var code = json.encode(jsonString);
  var real = jsonDecode(code);

  print(real);
}

int sum(int x, int y) => x + y;

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
