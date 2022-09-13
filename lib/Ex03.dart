final consoantes = "bcdghlmnpqrstv", vogais = "aeiou";

void main() {
  final texto =
           'Saruman acredita que apenas um grande poder pode manter o mal sobre controle, mas não é o que descobri. Descobri que são as pequenas coisas, as tarefas diárias de pessoas comuns que mantém o mal afastado, simples ações de bondade e amor.',
      pPalavras = numPalavras(texto),
      tTexto = tamTexto(texto),
      nFrases = numFrases(texto),
      nVogais = numVogais(texto),
      consoAchadas = consoUsadas(texto);

  print('Paragrafo: $texto'
      '\nNúmero de palavras: $pPalavras'
      '\nTamanho do texto: $tTexto'
      '\nNúmero de frases: $nFrases'
      '\nNúmero de vogais: $nVogais'
      '\nConsoantes encontradas:$consoAchadas');
}

int numPalavras(String texto) {
  if (texto.trim().isEmpty) {
    return 0;
  }
  return texto.split(' ').length;
}

int tamTexto(String texto) => texto.trim().length;

int numFrases(String texto) {
  var contarFrases = 0;
  final frases = texto.trim().split('.');
  for (final frase in frases) {
    if (frase.isNotEmpty) {
      contarFrases++;
    }
  }
  return contarFrases;
}

int numVogais(String texto) {
  var contarVogais = 0;
  for (final naosei in texto.trim().runes) {
    final caractere = String.fromCharCode(naosei).toLowerCase();
    if (vogais.contains(caractere)) {
      contarVogais++;
    }
  }
  return contarVogais;
}

String consoUsadas(String texto) {
  final consoEncontradas = <String>{};

  for (final naosei in texto.trim().runes) {
    final varcharkk = String.fromCharCode(naosei).toLowerCase();
    final consoante = consoantes.contains(varcharkk);
    if (!consoante) {
      continue;
    }

    final achada = consoEncontradas.contains(varcharkk);
    if (!achada) {
      consoEncontradas.add(varcharkk);
    }
  }
  final naOrdem = (consoEncontradas.toList())..sort();

  return naOrdem.join(', ');
}
