import 'package:flutter/material.dart';
import 'diccionarioempleado.dart';

class VerEmpleados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nómina Studio Mochi"),
        backgroundColor: Color(0xFF2E3B6E),
      ),
      body: ListView.builder(
        itemCount: datosEmpleado.length,
        itemBuilder: (context, index) {
          final empleado = datosEmpleado.values.elementAt(index);
          return Card(
            color: Color(0xFFB3B3B3).withOpacity(0.2),
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFF2E3B6E),
                child: Text("${empleado.id}"),
              ),
              title: Text(
                empleado.nombre,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(empleado.puesto),
              trailing: Text(
                "\$${empleado.salario}",
                style: TextStyle(color: Colors.green[800]),
              ),
            ),
          );
        },
      ),
    );
  }
}
