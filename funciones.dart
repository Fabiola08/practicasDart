void main(List<String> arguments) {
  dividir();
  //bool r = esPar();
  print('¿El número es Par? : ${esPar()}');
  //Llamando a funciones que requieren parámetros
  saludo1('Sinforosa');
  String nombre = 'Tiburcio';
  saludo1(nombre);
  saludo2('Pancrasio', 1985);
  saludo3('Filomena', 2000);
  String? nombre2;
  int? year2;
  saludo3(nombre2, year2);
  saludo4();
  saludo4('Tránsito');
  //saludo1(2040); Se debe enviar al menos el argumento String
  saludo4('Britany', 2040);

  saludo5();
  saludo5(name:'Anacleto');
  saludo5(year: 1996, name:'anastacia');
  saludo5(year: 2040);

  saludo6(name: 'cleto', mensaje: 'que onda');
  saludo6(mensaje: 'que tal', name:'petronila');
 
  //uso de funciones anónimas
  var alumnos = Map();
  alumnos[1]='Liz';
  alumnos[2]='Katerine';
  alumnos[3]='Dana';
  alumnos[4]='Monse';
  alumnos[5]='Lily';
  alumnos[6]='Rich';
  //imprimiendo el map con una función anónima
  alumnos.forEach((key, value) => print('Clave: $key, Valor: $value'));
 

}

  void dividir(){
    int n1=12;
    int n2=4;
    int cociente;
    int residuo;
    double resultado;

    resultado=n1/n2;
    print('Resultado de dividir $n1 entre $n2 es $resultado');

    cociente = n1 ~/ n2;
    print('Cociente de la división entre $n1 y $n2 es $cociente');

    residuo = n1 % n2;
    print('Residuo de la división entre $n1 y $n2 es $residuo');
  }

  bool esPar() {
    var numero = 15;
    if(numero % 2 == 0){
      return true;
    } else {
      return false;
    }
  }

void saludo1(String name){
  print ('hola $name');
}

void saludo2(String name, int year){
  print('Que tal $name, este es el año $year');
}

void saludo3(String? name, int? year){
  print('Hola $name, estas en el $year');
}

void saludo4([String name= 'destino', int year=2023]){
  print('Hola $name, estas en el $year');
}

void saludo5({  String name = 'desconocido', int year=2040}){


  print('Hola $name, estas en el $year');
}

void saludo6({required String name,required String mensaje}){
  print('Saludo6: $mensaje, $name');
}