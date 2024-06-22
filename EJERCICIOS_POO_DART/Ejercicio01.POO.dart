class Cuenta {
  String titular;
  double cantidad;

  Cuenta({required this.titular, this.cantidad = 0.0});

  void ingresar(double cantidad) {
    if (cantidad >= 0) {
      this.cantidad += cantidad;
    }
  }

  void retirar(double cantidad) {
    if (this.cantidad - cantidad >= 0) {
      this.cantidad -= cantidad;
    } else {
      this.cantidad = 0;
    }
  }

  void mostrar() {
    print("Titular: $titular");
    print("Cantidad: $cantidad");
  }
}

void main() {
  Cuenta cuenta1 = Cuenta(titular: "Dani Yeremi", cantidad: 800.0);

  print("Cuenta 1:");
  cuenta1.mostrar();

  cuenta1.ingresar(200.0);
  print("\nDespués de ingresar 200:");
  cuenta1.mostrar();

  cuenta1.retirar(350.0);
  print("\nDespués de retirar 350:");
  cuenta1.mostrar();
}
