import 'a8_5_animal.dart';

//* Classe filha ou subclasse (extends)
class Chicken extends Animal {
  @override
  final String gender;

  Chicken(int numLegs, this.gender) : super(numLegs);

  @override
  void makeSound() => print('Cócóricó');

  @override
  void eat() {
    super.eat(); //O pcional
    print('A galinha começou a comer');
  }
}
