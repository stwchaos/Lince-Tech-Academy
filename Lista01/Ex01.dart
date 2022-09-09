import 'dart:math' as math;

void main () {
  final List<double> raios = [5.0, 8.0, 12.0, 6.3, 15];
  calcularOsRaios(raios);
}

double areaDoCirculo(double raio) => math.pi * math.pow(raio, 2);
double perimetroDoCirculo(double raio) => 2 * math.pi * raio;

void calcularOsRaios(List<double> raios) {
  for (final raio in raios) {
    final area = areaDoCirculo(raio);
    final perimetro = perimetroDoCirculo(raio);

    print('Raio: $raio, área: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}.');
  }
}