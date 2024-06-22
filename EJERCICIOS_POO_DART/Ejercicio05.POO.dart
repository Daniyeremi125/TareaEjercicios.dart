void main() {
  Persona persona1 = Persona(nombre: "Juan Pérez", edad: 20, dni: "12345678");

  persona1.mostrar();
  print("Es mayor de edad: ${persona1.esMayorDeEdad()}");
}

class Persona {
  String nombre;
  int edad;
  String dni;

  Persona({required this.nombre, required this.edad, required this.dni});

  void mostrar() {
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("DNI: $dni");
  }

  bool esMayorDeEdad() {
    return this.edad >= 18;
  }
}
