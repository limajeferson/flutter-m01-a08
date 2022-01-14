class Circle {
  //! Visibilidade
  double _radius = 5.2;
  // double length() => 2 * 3.14 * _radius;

  //* Fields/Campos: static const
  static const pi = 3.14;

  //* Métodos: getter e setter
  double get length => 2 * 3.14 * _radius;
  set length(double newValue) => _radius = newValue / (2 * pi);
}
