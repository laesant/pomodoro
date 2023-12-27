import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  const CronometroBotao(
      {super.key, required this.icone, required this.texto, this.click});
  final IconData icone;
  final String texto;
  final void Function()? click;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            textStyle: const TextStyle(fontSize: 25)),
        onPressed: click,
        icon: Icon(
          icone,
          size: 35,
        ),
        label: Text(texto));
  }
}
