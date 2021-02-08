import 'package:controle_fornecedores/view/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SuppliersControl());
}

class SuppliersControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF91131C),
        accentColor: Color(0xFFE25656),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      title: 'Controle de Fornecedores',
      home: HomePage(),
    );
  }
}
