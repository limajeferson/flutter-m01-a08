//* Herança: Possibilidadede compartilhar propriedades e comportamentos
//* dentro de uma hierarquia. Facilita o reuso de código e a criação de
//* funcionalidades similares.

//? Polimorfismo: Redefinir, especificar, diferenciar propriedadese
//? comportamentos a depender do contexto inserido. Facilita leitura e
//? coesão do código.
//! Polimorfismo pode ser utilizado através de sobrecarga e sobrescrita,
//! o Dart só suporta sobrescrita por enquanto

import 'a8_5_animal.dart';
import 'a8_5_chicken.dart';
import 'a8_5_cow.dart';

void main() {
  // final animal = Animal();
  final chicken = Chicken(2, 'feminino');
  final cow = Cow(4, 'feminino');

  chicken.eat();
  cow.eat();

  print('');

  chicken.eat();
  cow.makeSound();

  print('');

  print(chicken is Animal);
  print(cow is Animal);
}
