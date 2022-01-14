//? Abstração: Capacidade de abstrair, ocultar informções,
//? que não são necessárias ou não deveriam ser acessíveis
//? pelo consumidor. Facilita manutenção e reutilização.

//* Encapsulamento: Encapsular, associar informações que são
//* importantes somente a quem realmente utiliza. Contribui
//* para a segurança e dificulta interferências externas.

class Car {
  final batteryTension = 12.0;
  final requiredIgnitionTension = 10000;
  final requiredConbustionTime = 499;
  final coilConversionRate = 1600;

  bool hasBatteryEnergy = true;
  bool hasFuel = true;
  bool isOn = false;

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

  double startEletricSystem() {
    if (hasBatteryEnergy) {
      return convertToHighTension(batteryTension);
    }
    return 0.0;
  }

  // Bobina
  double convertToHighTension(double lowTension) =>
      lowTension * coilConversionRate;

  bool startIgnitionSystem(double highTension) {
    if (highTension > requiredIgnitionTension) {
      int time = 0;
      while (!shouldStartCombustion(time)) {
        time++;
      }
      return true;
    }
    return false;
  }

  // Distribuidor
  bool shouldStartCombustion(int time) =>
      hasFuel && time == requiredConbustionTime;

  void startCombustion() {
    isOn = true;
  }
}
