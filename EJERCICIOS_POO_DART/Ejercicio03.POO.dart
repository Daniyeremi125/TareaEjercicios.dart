void main() {
  Cuenta cuenta1 = Cuenta(nombre: "ALEX GARCIA", dni: "12345678", cantidad: 500.0);
  Cuenta cuenta2 = Cuenta(nombre: "CALOS VEGA", dni: "87654321", cantidad: 1000.0);

  cuenta1.transferir(cuenta2, 200.0);

  print("Cuenta 1:");
  print("Cantidad: ${cuenta1.cantidad}");

  print("Cuenta 2:");
  print("Cantidad: ${cuenta2.cantidad}");
}

class Cuenta {
  String nombre;
  String dni;
  double cantidad;

  Cuenta({required this.nombre, required this.dni, required this.cantidad});

  void ingresar(double cantidad) {
    if (cantidad >= 0) {
      this.cantidad += cantidad;
    }
  }

  void reintegro(double cantidad) {
    if (cantidad >= 0) {
      this.cantidad += cantidad;
    }
  }

  void transferir(Cuenta destino, double cantidad) {
    if (cantidad >= 0 && this.cantidad - cantidad >= 0) {
      this.cantidad -= cantidad;
      destino.cantidad += cantidad;
    }
  }
}
