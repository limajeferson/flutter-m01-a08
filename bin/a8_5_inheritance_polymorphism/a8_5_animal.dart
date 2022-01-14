//* Classe abstrata, classe mãe e superclasse
abstract class Animal {
  //* Field + constructor
  final int numLegs;
  Animal(this.numLegs);

  //* Field + abstrato
  abstract final String gender;

  //* Field implementado
  final bool canMove = true;

  //* Método + implementação
  void makeSound();

  //* Método abstrato
  void eat() => print('Todo animal precisa comer');
}
