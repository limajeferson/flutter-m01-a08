//* Classe filha ou subclasse (extends)
import 'a8_5_animal.dart';

class Cow implements Animal {
  @override
  final int numLegs;

  @override
  final String gender;

  Cow(this.numLegs, this.gender);

  @override
  bool get canMove => true;

  @override
  void eat() {}

  @override
  void makeSound() {}
}
