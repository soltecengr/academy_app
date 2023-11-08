import 'package:flutter/material.dart';

import 'views/screens/login_screen.dart';

void main() {
  runApp(const SoltecAcademy());
}

class SoltecAcademy extends StatelessWidget {
  const SoltecAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soltec Academy',
      home: const LoginScreen(),
    );
  }
}
