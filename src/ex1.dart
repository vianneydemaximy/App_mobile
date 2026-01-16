void main() {
  int? a;
  int b = a ?? 5;

  int? c = a;
  print(c);

  if (a == null) {
    a = 3;
  }

  print(a.isEven);
}