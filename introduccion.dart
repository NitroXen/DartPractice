import 'dart:io';
import 'dart:convert';

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
  // Condicionales

  if (a > 20) {
    print("a es mayor que 20");
  }

  if (!c) {
    print("C is True");
  } else {
    print("C is False");
  }
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

  // JSON
  var json = '''{
    "id": 1,
    "name": "Rick Sanchez",
    "status": "Alive",
    "species": "Human",
    "type": "",
    "gender": "Male",
    "origin": {
        "name": "Earth (C-137)",
        "url": "https://rickandmortyapi.com/api/location/1"
    },
    "location": {
        "name": "Citadel of Ricks",
        "url": "https://rickandmortyapi.com/api/location/3"
    },
    "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
    "episode": [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2",
        "https://rickandmortyapi.com/api/episode/3",
        "https://rickandmortyapi.com/api/episode/4",
        "https://rickandmortyapi.com/api/episode/5",
        "https://rickandmortyapi.com/api/episode/6",
        "https://rickandmortyapi.com/api/episode/7",
        "https://rickandmortyapi.com/api/episode/8",
        "https://rickandmortyapi.com/api/episode/9",
        "https://rickandmortyapi.com/api/episode/10",
        "https://rickandmortyapi.com/api/episode/11",
        "https://rickandmortyapi.com/api/episode/12",
        "https://rickandmortyapi.com/api/episode/13",
        "https://rickandmortyapi.com/api/episode/14",
        "https://rickandmortyapi.com/api/episode/15",
        "https://rickandmortyapi.com/api/episode/16",
        "https://rickandmortyapi.com/api/episode/17",
        "https://rickandmortyapi.com/api/episode/18",
        "https://rickandmortyapi.com/api/episode/19",
        "https://rickandmortyapi.com/api/episode/20",
        "https://rickandmortyapi.com/api/episode/21",
        "https://rickandmortyapi.com/api/episode/22",
        "https://rickandmortyapi.com/api/episode/23",
        "https://rickandmortyapi.com/api/episode/24",
        "https://rickandmortyapi.com/api/episode/25",
        "https://rickandmortyapi.com/api/episode/26",
        "https://rickandmortyapi.com/api/episode/27",
        "https://rickandmortyapi.com/api/episode/28",
        "https://rickandmortyapi.com/api/episode/29",
        "https://rickandmortyapi.com/api/episode/30",
        "https://rickandmortyapi.com/api/episode/31",
        "https://rickandmortyapi.com/api/episode/32",
        "https://rickandmortyapi.com/api/episode/33",
        "https://rickandmortyapi.com/api/episode/34",
        "https://rickandmortyapi.com/api/episode/35",
        "https://rickandmortyapi.com/api/episode/36",
        "https://rickandmortyapi.com/api/episode/37",
        "https://rickandmortyapi.com/api/episode/38",
        "https://rickandmortyapi.com/api/episode/39",
        "https://rickandmortyapi.com/api/episode/40",
        "https://rickandmortyapi.com/api/episode/41",
        "https://rickandmortyapi.com/api/episode/42",
        "https://rickandmortyapi.com/api/episode/43",
        "https://rickandmortyapi.com/api/episode/44",
        "https://rickandmortyapi.com/api/episode/45",
        "https://rickandmortyapi.com/api/episode/46",
        "https://rickandmortyapi.com/api/episode/47",
        "https://rickandmortyapi.com/api/episode/48",
        "https://rickandmortyapi.com/api/episode/49",
        "https://rickandmortyapi.com/api/episode/50",
        "https://rickandmortyapi.com/api/episode/51"
    ],
    "url": "https://rickandmortyapi.com/api/character/1",
    "created": "2017-11-04T18:48:46.250Z"
}''';
  var decoded = jsonDecode(json);
  print(decoded["name"]);
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
