import 'dart:math' as math;

void main() {
  final nomes = [
    'Bilbo',
    'Frodo',
    'Samwise',
    'Peregrin',
    'Merryadoc',
    'Aragon',
    'Legolas',
    'Gimili',
    'Boromir',
    'Saruman',
    'Gollum',
    'Sauron',
    'Margoth',
    'Camilla',
    'Vlad',
    'John',
    'Bram',
    'Sheridan',
    'Thorin',
    'Gary',
    'Dave',
    'Sheev',
    'Anakin'
  ];

  final sobrenomes = [
    'Baggins',
    'Bolseiro',
    'Gamgee',
    'Túk',
    'Brandebuque',
    'Passolargo',
    'Verdemata',
    'Erebor',
    'Gondor',
    'Olórin',
    'Curunir',
    'Smeagle',
    'Marion',
    'Melkor',
    'Karsntein',
    'Tepes',
    'Polidori',
    'Stoker',
    'LeFanu',
    'Oakshield',
    'Gygax',
    'Arneson',
    'Palpatine',
    'Skywalker'
  ];

  final gerarNomeSobrenome = math.Random();
  final nomeGeradoatu = gerarNomeSobrenome.nextInt(nomes.length);
  final sobrenomeGeradoatu = gerarNomeSobrenome.nextInt(sobrenomes.length);

  final nomeGerado = nomes[nomeGeradoatu];
  final sobrenomeGerado = sobrenomes[sobrenomeGeradoatu];

  final geradoCompleto = '$nomeGerado $sobrenomeGerado';

  print('Nome gerado: $geradoCompleto');
}
