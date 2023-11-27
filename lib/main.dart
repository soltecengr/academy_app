import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'views/screens/dashboard/profile_screen.dart';

void main() async {
  runApp(const SoltecAcademy());
}

class SoltecAcademy extends StatelessWidget {
  const SoltecAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    return const OKToast(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProfileScreen(),
      ),
    );
  }
}
