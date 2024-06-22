void main() {
  
  Persona persona1 = Persona(nombre: "Jose Castro", edad: 24, dni: "12345678A");


  CuentaJoven cuentaJoven1 = CuentaJoven(titular: persona1, cantidad: 500.0, bonificacion: 10.0);


  print(cuentaJoven1.mostrar());

 
  cuentaJoven1.retirar(100.0);
  print("\nDespués de retirar 100:");
  print(cuentaJoven1.mostrar());


  cuentaJoven1.retirar(600.0);
  print("\nDespués de intentar retirar 600:");
  print(cuentaJoven1.mostrar());
}

class Persona {
  String nombre;
  int edad;
  String dni;

  Persona({required this.nombre, required this.edad, required this.dni});

  bool esMayorDeEdad() {
    return this.edad >= 18;
  }
}

class Cuenta {
  Persona titular;
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
    print("Titular: ${titular.nombre}");
    print("Cantidad: $cantidad");
  }
}

class CuentaJoven extends Cuenta {
  double bonificacion;

  CuentaJoven({required Persona titular, required double cantidad, required this.bonificacion})
      : super(titular: titular, cantidad: cantidad);

  void setBonificacion(double bonificacion) {
    if (bonificacion >= 0) {
      this.bonificacion = bonificacion;
    } else {
      this.bonificacion = 0;
    }
  }

  double getBonificacion() {
    return this.bonificacion;
  }

  bool esTitularValido() {
    return titular.esMayorDeEdad() && titular.edad < 25;
  }

  @override
  void retirar(double cantidad) {
    if (esTitularValido() && this.cantidad - cantidad >= 0) {
      this.cantidad -= cantidad;
    }
  }

  @override
  String mostrar() {
    return "Cuenta Joven: \nTitular: ${titular.nombre}\nCantidad: ${cantidad}\nBonificación: ${bonificacion}%";
  }
}


