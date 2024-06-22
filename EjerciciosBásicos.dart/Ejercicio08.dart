void main(){
  
int segundosTotales= 333333;
int horas= segundosTotales ~/ 3600;
int minutos= (segundosTotales%3600) ~/60;
int segundos =segundosTotales%60;
  
print('Los segundos puestos son: $segundosTotales');
print('conversion  $horas con $minutos y $segundos segundos');
  
}
