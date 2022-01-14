//? Abstração: Capacidade de abstrair, ocultar informções,
//? que não são necessárias ou não deveriam ser acessíveis
//? pelo consumidor. Facilita manutenção e reutilização.

//* Encapsulamento: Encapsular, associar informações que são
//* importantes somente a quem realmente utiliza. Contribui
//* para a segurança e dificulta interferências externas.

class Car {
  final _batteryTension = 12.0;
  final _requiredIgnitionTension = 10000;
  final _requiredConbustionTime = 499;
  final _coilConversionRate = 1600;

  bool _hasBatteryEnergy = true; //TODO: implement battery level
  bool get hasBatteryEnergy => _hasBatteryEnergy;

  bool _hasFuel = true; //TODO: Implement fuel level
  bool get hasFuel => _hasFuel;

  bool _isOn = false;
  bool get isOn => _isOn;

  //* Ligar o carro:
  //* 1.  Sistema Elétrico
  //*     Pega Tensão da bateria
  //*     Passa pela bobina e converte para alta tensão
  //* 2.  Sistema de Ignição
  //*     Recebe alta tensão
  //*     Passa pelo distribuidor
  //*     Determina a hora certa de iniciar a combustão
  //* 3.  Combustão no motor
  //* Resultado: Carro ligado ou não
  bool start() {
    final highTension = _startEletricSystem();
    final shouldStartCombustion = _startIgnitionSystem(highTension);
    if (shouldStartCombustion) {
      _startCombustion();
    }
    return _isOn;
  }

  double _startEletricSystem() {
    if (_hasBatteryEnergy) {
      return _convertToHighTension(_batteryTension);
    }
    return 0.0;
  }

  // Bobina
  double _convertToHighTension(double lowTension) =>
      lowTension * _coilConversionRate;

  bool _startIgnitionSystem(double highTension) {
    if (highTension > _requiredIgnitionTension) {
      int time = 0;
      while (!_shouldStartCombustion(time)) {
        time++;
      }
      return true;
    }
    return false;
  }

  // Distribuidor
  bool _shouldStartCombustion(int time) =>
      _hasFuel && time == _requiredConbustionTime;

  void _startCombustion() {
    _isOn = true;
  }
}
