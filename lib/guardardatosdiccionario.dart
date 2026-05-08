import 'claseempleado.dart';
import 'diccionarioempleado.dart';

class GuardarDatosDiccionario {
  static void registrarEmpleado(String nombre, String puesto, double salario) {
    // Autonumérico basado en el tamaño actual del diccionario
    int nuevoId = datosEmpleado.length + 1;

    Empleado nuevo = Empleado(
      id: nuevoId,
      nombre: nombre,
      puesto: puesto,
      salario: salario,
    );

    datosEmpleado[nuevoId] = nuevo;
  }
}
