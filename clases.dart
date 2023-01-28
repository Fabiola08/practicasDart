import 'dart:io';

void main(List<String> arguments) {
  var unaLaptop = Computadora('Allienware', 'Intel core i9', 32);
  print('Información de la laptop que te venden en internet: $unaLaptop');

//stdout.write es lo mismo que print
//stdin sirve para entradas desde la terminal
//con setters y getters no es necesario escribir el boolean en parentesis, sólo se iguala
  stdout.write('¿Esta computadora es adecuada para la materia DMM?');
  String? respuesta=stdin.readLineSync();
  if(respuesta != null){
    if(respuesta.contains('si')){
    //unaLaptop.configurarAdecuada(true); Marca error
    unaLaptop.configurarAdecuada=true;
  } else {
    unaLaptop.configurarAdecuada=false;
  }
  }
  else{
    print('No se puede saber si la PC es adecuada porque se recibió null');
  }
  print('laptop1 es adecuada para tu materia: ${unaLaptop.esAdecuada}');

  unaLaptop.marca = 'Lenovo';
  unaLaptop.cpu = 'Celeron';
  unaLaptop.ram = 4;
  print('Información de la laptop que te llegó a cada: $unaLaptop');


}

class Computadora {
  //Campos
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada = false; 
 
  //Constructor
  /*Computadora(String m, String c, int r){
    this.marca=m;
    this.cpu=c;
    this.ram=r;
  }*/
 
  //Forma corta de escribir el constructor con prámetros nombrados
  Computadora(this.marca, this.cpu, this.ram);
 
 
  @override
  String toString(){
    return 'Marca: $marca, CPU: $cpu, RAM: $ram, es adecuada para DMM: $adecuada';
  }
   
   //getter de la variable adecuada
   bool get esAdecuada {
    return adecuada;
   }

   //setter de la variable adecuada
   set configurarAdecuada(bool valor){
    adecuada=valor;
   }
}
