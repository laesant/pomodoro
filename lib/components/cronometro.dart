import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "25:00",
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CronometroBotao(icone: Icons.play_arrow, texto: 'Iniciar'),
              //  CronometroBotao(icone: Icons.stop, texto: 'Parar'),
              SizedBox(width: 20),
              CronometroBotao(icone: Icons.refresh, texto: 'Reiniciar'),
            ],
          )
        ],
      ),
    );
  }
}
