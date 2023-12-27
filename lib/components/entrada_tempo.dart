import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String titulo;
  const EntradaTempo({super.key, required this.valor, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(titulo), Text(valor.toString())],
    );
  }
}
