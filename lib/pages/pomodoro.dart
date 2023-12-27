import 'package:flutter/material.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          EntradaTempo(valor: 25, titulo: 'Trabalho'),
          EntradaTempo(valor: 5, titulo: 'Descanso'),
        ],
      ),
    );
  }
}
