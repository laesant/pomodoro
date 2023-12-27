import 'package:flutter/material.dart';

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
                style: IconButton.styleFrom(backgroundColor: Colors.red),
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
                style: IconButton.styleFrom(backgroundColor: Colors.red),
                onPressed: inc,
                icon: const Icon(Icons.arrow_upward)),
          ],
        ),
      ],
    );
  }
}
