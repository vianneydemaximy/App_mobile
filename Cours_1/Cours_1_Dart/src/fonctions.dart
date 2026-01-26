void main() {
  int? num;
  List <int> list=[25,42,79,12];

  void method(int a, [int? b, int? c]) {
    return;
  }

  List<int> triliste(List<int> liste, bool croissant){
    if (croissant){
      return liste..sort();
    }
    else{
      
    }

  }
  method(0);
  method(0, 1);
  method(0, null);
  method(0, 1, 4);
  print("Reussi");

}

