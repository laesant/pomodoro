import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro_botao.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(builder: (context) {
      return Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hora de Trabalhar',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}",
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: store.iniciado,
                  replacement: CronometroBotao(
                    icone: Icons.play_arrow,
                    texto: 'Iniciar',
                    click: store.iniciar,
                  ),
                  child: CronometroBotao(
                    icone: Icons.stop,
                    texto: 'Parar',
                    click: store.parar,
                  ),
                ),
                const SizedBox(width: 20),
                CronometroBotao(
                  icone: Icons.refresh,
                  texto: 'Reiniciar',
                  click: store.reiniciar,
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
