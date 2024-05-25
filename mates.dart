import 'dart:math' as math;

int suma(int x, int y) {
  return x + y;
}

int resta(int x, int y) {
  return x - y;
}

int multiplicacion(int x, int y) {
  return x * y;
}

double division(double x, double y) {
  return x / y;
}

double resto(double x, double y) {
  return x % y;
}

double circulo(double radio) {
  return radio * radio * math.pi;
}

double area(double radio) {
  return radio * radio * math.pi * 2;
}

double circunferencia(double radio) {
  return radio * 2 * math.pi;
}
