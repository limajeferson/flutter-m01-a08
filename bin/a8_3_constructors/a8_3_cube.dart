import 'dart:math';

class Cube {
  //* Fields
  final double side;
  final double volume;

  //* Default
  // Cube(this.side);

  //* Parâmetros nomeados - Initializer List
  // Cube({required this.side});
  // Cube({required this.side}) {
  //   print('Cubo foi inicializado');
  // }
  // Cube({required this.side}) : volume = side * side * side {
  //   print('Cubo foi inicializado: $side');
  // }

  //* Named, default, sobreescrito, redirecionar contrutor
  // Cube.withVolume({required this.volume})
  //     : side = ;
  // Cube.withVolume({required double volume})
  //     : this(side: pow(volume, 1 / 3).toDouble());
  const Cube.withVolume({required this.volume, required this.side});

  //* Const - hash code e ==
  const Cube({required this.side}) : volume = side * side * side;
}
