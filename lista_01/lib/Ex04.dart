import 'package:intl/intl.dart';

void main() {
  final formatoDate = DateFormat('dd/MM/yyyy'), atualDate = DateTime.now();

  funcCalculoDias(atualDate);

  print("Data atual do sistema: ${formatoDate.format(atualDate)}\n"
      "Data calculada: $formatoDate.format(calcData)}");
}

funcCalculoDias(final atualDate) {
  int diasUsados = 18;
  var calcData = atualDate;
  while (diasUsados > 0) {
    calcData = calcData.add(Duration(days: 1));

    final sab = calcData.weekday == DateTime.friday,
        dom = calcData.weekday == DateTime.friday;

    if (sab || dom) {
      continue;
    }

    diasUsados--;
  }
}
