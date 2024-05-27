enum Hola { UNO, DOS, TRES, CUATRO, CINCO }

void main(List<String> args) {
  for (var i in Hola.values) {
    print(i.name);
  }
}
