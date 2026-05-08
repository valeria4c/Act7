import 'package:flutter/material.dart';
import 'inicio.dart';
import 'capturaempleados.dart';
import 'verempleados.dart';

void main() => runApp(StudioMochiApp());

class StudioMochiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studio Mochi 22px',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFE8E8E6),
        primaryColor: Color(0xFF2E3B6E),
      ),
      // Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/captura': (context) => CapturaEmpleados(),
        '/ver': (context) => VerEmpleados(),
      },
    );
  }
}
