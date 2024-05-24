// Ciclos
void main() {
  int a = 1;
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
}
