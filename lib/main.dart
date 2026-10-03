import 'package:flutter/material.dart';
import 'package:projf_pizza_sul_apresentacao/screens/telainicial_page.dart';

void main(){
  runApp(PizzaSul());
}

class PizzaSul extends StatelessWidget {
  const PizzaSul({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelainicialPage(),
    );
  }
}