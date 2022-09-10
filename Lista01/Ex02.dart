void main() {
  final List <double> temperaturas = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];
  convertioT(temperaturas);
}

double celciusF (double celcius) => celcius * (9/5) + 32;
double celciusK (double celcius) => celcius + 273.15;

void convertioT (List<double> temperaturas) {
  for (final celcius in temperaturas) {
    final fahrenheit = celciusF (celcius);
    final kelvin = celciusK (celcius);

    print('\n----------------------------------------------\n'
        '\n----------------------------------------------\n'
        ' Celcius: ${celcius.toStringAsFixed(2)} |'
        '\n----------------------------------------------\n'
        ' Fahrenheit: ${fahrenheit.toStringAsFixed(2)} |'
        '\n----------------------------------------------\n'
        ' Felvin: ${kelvin.toStringAsFixed(2)}');

  }
}