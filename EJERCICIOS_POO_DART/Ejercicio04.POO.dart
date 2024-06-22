void main() {

  Contador contador1 = Contador(contador: 0);

  print("Valor inicial del contador: ${contador1.contador}");


  contador1.incrementar();
  print("Después de incrementar: ${contador1.contador}");


  contador1.decrementar();
  print("Después de decrementar: ${contador1.contador}");
}

class Contador {
  int contador;


  Contador({required this.contador});


  void incrementar() {
    this.contador++;
  }


  void decrementar() {
    this.contador--;
  }
}
