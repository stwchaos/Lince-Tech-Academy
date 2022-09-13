void main() {
  final num = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  final saidaFor = modeloFor(num);
  final saidaWhile = modeloWhile(num);
  final saidaLista = modeloLista(num);
  final saidaRecursivo = modeloRecursivo(num);

  print('\n----------------------------------------------\n'
      '\n----------------------------------------------\n'
      'modelo for: $saidaFor'
      '\n----------------------------------------------\n'
      'modelo while: $saidaWhile'
      '\n----------------------------------------------\n'
      'modelo recursão: $saidaLista, '
      '\n----------------------------------------------\n'
      'modelo lista: $saidaRecursivo');
}

int modeloFor(List<int> num) {
  var soma = 0;
  for (final nume in num) {
    soma = soma + nume;
  }
  return soma;
}

int modeloWhile(List<int> num) {
  var soma = 0;
  final iterador = num.iterator;
  while (iterador.moveNext()) {
    soma = soma + iterador.current;
  }
  return soma;
}

int modeloLista(List<int> num) => num.reduce((a, b) => a + b);

int modeloRecursivo(List<int> num) {
  if (num.isEmpty) {
    return 0;
  }
  return num.first + modeloRecursivo(num.sublist(1));
}
