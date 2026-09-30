import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MiPerfilDevApp());
}

class MiPerfilDevApp extends StatelessWidget {
  const MiPerfilDevApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Perfil Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
