import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int pontos_usuario;
  final int empates;
  final int pontos_app;

  const ScoreBoard({
    super.key,
    required this.pontos_usuario,
    required this.empates,
    required this.pontos_app,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Placar',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text('Você'),
                Text('$pontos_usuario', style: const TextStyle(fontSize: 20)),
              ],
            ),
            Column(
              children: [
                const Text('Empates'),
                Text('$empates', style: const TextStyle(fontSize: 20)),
              ],
            ),
            Column(
              children: [
                const Text('App'),
                Text('$pontos_app', style: const TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
