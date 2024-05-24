//condicionales
import 'dart:io';

void main() {
  print("Introduce un numero");

  var a = stdin.readByteSync();
  if (a > 20) {
    print("a es mayor que 20");
  }

  var c = a < 15;

  if (!c) {
    print("C is True");
  } else {
    print("C is False");
  }
}
