void main() {
  final List<int> listaOriginal = [1, 2, 2, 3, 4, 4, 5, 6, 6, 7];
  final List<int> listaUnica = [];

  for (int i = 0; i < listaOriginal.length; i++) {
    bool esDuplicado = false;
    for (int j = 0; j < listaUnica.length; j++) {
      if (listaOriginal[i] == listaUnica[j]) {
        esDuplicado = true;
        break;
      }
    }
    if (!esDuplicado) {
      listaUnica.add(listaOriginal[i]);
    }
  }
  print('Lista original: $listaOriginal');
  print('Lista con elementos únicos: $listaUnica');
}