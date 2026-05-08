import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "STUDIO MOCHI 22px",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E3B6E),
              ),
            ),
            SizedBox(height: 50),
            _botonMenu(context, "CAPTURA EMPLEADOS", '/captura'),
            SizedBox(height: 20),
            _botonMenu(context, "VER EMPLEADOS", '/ver'),
          ],
        ),
      ),
    );
  }

  Widget _botonMenu(BuildContext context, String texto, String ruta) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF384057),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () => Navigator.pushNamed(context, ruta),
      child: Text(texto, style: TextStyle(color: Color(0xFFD4CFC3))),
    );
  }
}
