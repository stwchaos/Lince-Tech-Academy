void main() {
  final num = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  saidaNum(num);
}

void saidaNum(List<int> num) {
  for (final demical in num..sort()) {
    print('\n----------------------------------------------\n'
        '\n----------------------------------------------\n'
        'Decimal: $demical'
        '\n----------------------------------------------\n'
        'Binário: ${demical.toRadixString(2)}'
        '\n----------------------------------------------\n'
        'octal: ${demical.toRadixString(8)}, '
        '\n----------------------------------------------\n'
        'Hexadecimal: ${demical.toRadixString(16)}');
  }
}
