void main() {

  Persona persona1 = Persona(nombre: "Juan Pérez", edad: 30, dni: "12345678A");


  Cuenta cuenta1 = Cuenta(titular: persona1, cantidad: 500.0);


  cuenta1.mostrar();
  
  
  cuenta1.ingresar(100.0);
  print("\nDespués de ingresar 100:");
  cuenta1.mostrar();
  

  cuenta1.retirar(200.0);
  print("\nDespués de retirar 200:");
  cuenta1.mostrar();
}

class Persona {
  String nombre;
  int edad;
  String dni;

  Persona({required this.nombre, required this.edad, required this.dni});
  

  void mostrarDatos() {
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("DNI: $dni");
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
