void main() {
  // Crear una instancia usando el constructor por defecto
  Persona persona1 = Persona();
  persona1.nombre = "Maria";
  persona1.edad = 28;
  persona1.dni = "12345678A";
  persona1.sexo = "M";
  persona1.peso = 65.0;
  persona1.altura = 1.65;

  // Crear una instancia usando el constructor con nombre, edad y sexo
  Persona persona2 = Persona.conNombreEdadSexo("Jose", 22, "H");

  // Crear una instancia usando el constructor con todos los atributos
  Persona persona3 = Persona.completo("Lucía", 30, "87654321B", "M", 55.0, 1.60);

  print("Persona 1:");
  persona1.mostrarDatos();
  print("IMC: ${persona1.calcularIMC()}");
  print("Es mayor de edad: ${persona1.esMayorDeEdad()}");

  print("\nPersona 2:");
  persona2.mostrarDatos();
  print("IMC: ${persona2.calcularIMC()}");
  print("Es mayor de edad: ${persona2.esMayorDeEdad()}");

  print("\nPersona 3:");
  persona3.mostrarDatos();
  print("IMC: ${persona3.calcularIMC()}");
  print("Es mayor de edad: ${persona3.esMayorDeEdad()}");
}

class Persona {
  String nombre;
  int edad;
  String dni;
  String sexo; // 'H' para hombre, 'M' para mujer
  double peso;
  double altura;


  Persona()
      : nombre = "",
        edad = 0,
        dni = "",
        sexo = "H",
        peso = 0.0,
        altura = 0.0;


  Persona.conNombreEdadSexo(this.nombre, this.edad, this.sexo)
      : dni = "",
        peso = 0.0,
        altura = 0.0;


  Persona.completo(
      this.nombre, this.edad, this.dni, this.sexo, this.peso, this.altura);


  double calcularIMC() {
    double imc = this.peso / (this.altura * this.altura);
    if (imc < 20) {
      return -1; // Peso bajo
    } else if (imc >= 20 && imc <= 25) {
      return 0; // Peso ideal
    } else {
      return 1; // Sobrepeso
    }
  }


  bool esMayorDeEdad() {
    return this.edad >= 18;
  }


  void comprobarSexo(String sexo) {
    if (sexo != "H" && sexo != "M") {
      this.sexo = "H";
    }
  }

  
  void mostrarDatos() {
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("DNI: $dni");
    print("Sexo: $sexo");
    print("Peso: $peso");
    print("Altura: $altura");
  }
}
