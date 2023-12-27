import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String titulo;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo(
      {super.key,
      required this.valor,
      required this.titulo,
      this.inc,
      this.dec});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton.filled(
                style: IconButton.styleFrom(
                    backgroundColor:
                        store.estaTrabalhando ? Colors.red : Colors.green),
                onPressed: dec,
                icon: const Icon(Icons.arrow_downward)),
            SizedBox(
              width: 100,
              child: Text(
                "$valor min",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            IconButton.filled(
                style: IconButton.styleFrom(
                    backgroundColor:
                        store.estaTrabalhando ? Colors.red : Colors.green),
                onPressed: inc,
                icon: const Icon(Icons.arrow_upward)),
          ],
        ),
      ],
    );
  }
}
