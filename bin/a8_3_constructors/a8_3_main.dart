import 'a8_3_cube.dart';

void main() {
  // final myCube = Cube();
  // final myCube = Cube(side: 2);
  final myCube = const Cube.withVolume(volume: 8, side: 2);
  final myCube2 = const Cube(side: 2);
  print(myCube == myCube2);
  print(myCube.hashCode);
  print(myCube2.hashCode);
}
