import 'dart:math' as math;

void main() {
  double areadDoCirculo, perimetroDoCirculo;

  final List<double> raios = [5.0, 8.0, 12.0, 6.3, 15];
  calcularOsRaios(raios);
}

areaDoCirculo(raio) => math.pi * math.pow(raio, 2);

perimetroDoCirculo(raio) => 2 * math.pi * raio;

void calcularOsRaios(List<double> raios) {
  for (final raio in raios) {
    final area = areaDoCirculo(raio);
    final perimetro = perimetroDoCirculo(raio);

    print('\n----------------------------------------------\n'
        '\n----------------------------------------------\n'
        'Raio: $raio'
        '\n----------------------------------------------\n'
        'Área: ${area.toStringAsFixed(2)}'
        '\n----------------------------------------------\n'
        'Perímetro: ${perimetro.toStringAsFixed(2)}.');
  }
}
