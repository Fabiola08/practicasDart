// ignore_for_file: unnecessary_null_comparison

void main() {
  //Para que el valor sea nulo se debe agregar el signo de interrogación "?"
  bool? x; 
  
  //algo que cambia el valor de x
  x=true;
  
  if (x == null){
    print('La variable x tiene un valor nulo');
  }
  else {
    print('La variable x no tiene un valor nulo');
    if(x){
      print('X es verdadera');
    }
    // ignore: dead_code
    else{
      print('X es falsa');
    }
  }
}
