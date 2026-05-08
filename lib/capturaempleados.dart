import 'package:flutter/material.dart';
import 'guardardatosdiccionario.dart';

class CapturaEmpleados extends StatefulWidget {
  @override
  _CapturaEmpleadosState createState() => _CapturaEmpleadosState();
}

class _CapturaEmpleadosState extends State<CapturaEmpleados> {
  final _nombreCtrl = TextEditingController();
  final _puestoCtrl = TextEditingController();
  final _salarioCtrl = TextEditingController();

  void _guardar() {
    if (_nombreCtrl.text.isNotEmpty && _puestoCtrl.text.isNotEmpty) {
      GuardarDatosDiccionario.registrarEmpleado(
        _nombreCtrl.text,
        _puestoCtrl.text,
        double.parse(_salarioCtrl.text),
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Empleado Guardado")));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro Mochi"),
        backgroundColor: Color(0xFF2E3B6E),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _campoTexto(_nombreCtrl, "Nombre del Empleado"),
            _campoTexto(_puestoCtrl, "Puesto (ej. Fotógrafo)"),
            _campoTexto(_salarioCtrl, "Salario", teclado: TextInputType.number),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD4CFC3),
              ),
              onPressed: _guardar,
              child: Text(
                "GUARDAR EMPLEADO",
                style: TextStyle(color: Color(0xFF2E3B6E)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _campoTexto(
    TextEditingController ctrl,
    String label, {
    TextInputType teclado = TextInputType.text,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: ctrl,
        keyboardType: teclado,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
