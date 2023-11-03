void main() {
  int addres;
  addres = calculateor(12, 10, add);
  print(addres);
}

int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

int calculateor(int a, int b, Function calculate) {
  return calculate(a, b);
}
