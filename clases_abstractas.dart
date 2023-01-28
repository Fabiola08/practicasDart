 void main(List<String> args) {
  final unCuadrado= Cuadrado();
  print('El area de un cuadrado es: ${unCuadrado}');

  
}
abstract class FiguraGeometrica{
  //Estableciendo lo que debe conteneruna figura geométrica
  double? area;

  double calcularArea();
}

class Cuadrado implements FiguraGeometrica{
  //Cuadrado hereda de FiguraGeometrica
  // y debe implementar todo lo definido en la clase abstracta

  @override
  double? area;

  @override
  double calcularArea(){
    double lado=12.5;
    return lado*lado;
  }

}