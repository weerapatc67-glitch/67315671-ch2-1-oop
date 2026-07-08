class Temperature {
  double _celsius;

  Temperature(this._celsius);

  double get celsius => _celsius;

  set celsius(double value) {
    if (value >= -273.15) {
      _celsius = value;
    } else {
      print('Error: อุณหภูมิต้องไม่ต่ำกว่า -273.15 °C');
    }
  }

  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  Temperature temp = Temperature(25);

  print('Celsius: ${temp.celsius} °C');
  print('Fahrenheit: ${temp.fahrenheit} °F');

  temp.celsius = 100;
  print('\nหลังเปลี่ยนค่า');
  print('Celsius: ${temp.celsius} °C');
  print('Fahrenheit: ${temp.fahrenheit} °F');

  temp.celsius = -300; 
  print('\nหลังลองกำหนดค่า -300');
  print('Celsius: ${temp.celsius} °C');
  print('Fahrenheit: ${temp.fahrenheit} °F');
}