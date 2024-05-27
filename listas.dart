void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List num = numbers.map((e) => e *= 3).toList();

  List num2 = numbers.where((element) => element >= 5).toList();

  int num3 = numbers.first;

  int num4 = numbers.last;

  int num5 = numbers.reduce((value, element) => value + element);

  print(num);

  print(num2);

  print(num3);

  print(num4);

  print(num5);

  bool num6 = numbers.contains(12);

  print(num6);

  numbers.add(12);

  num6 = numbers.contains(12);

  print(num6);
}
