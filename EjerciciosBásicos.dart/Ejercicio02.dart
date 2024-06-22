void main() {
  
  double sueldo1 = 1000;
  double sueldo2= 800;
  double sueldo3 = 900;
  
  double aumento1 = sueldo1*1.10;
  double aumento2= sueldo2*1.12;
  double aumento3 = sueldo3*1.15;
  
  print('Sueldo final primer empleado es:\$${aumento1.toStringAsFixed(2)}');
  print('Sueldo final del segundo empleado es: \$${aumento2.toStringAsFixed(2)}');
  print('Sueldo final del tercer empleado es: \$${aumento3.toStringAsFixed(2)}');
  
}
