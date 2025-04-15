import 'package:flutter/material.dart';

class GameArea extends StatelessWidget {
  final String? escolha_usuario;
  final String? escolha_app;
  final Color cor_borda_usuario;
  final Color cor_borda_app;

  const GameArea({
    super.key,
    required this.escolha_usuario,
    required this.escolha_app,
    required this.cor_borda_usuario,
    required this.cor_borda_app,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text('Você'),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: cor_borda_usuario, width: 3),
              ),
              child:
                  escolha_usuario != null
                      ? Image.asset(
                        'assets/images/$escolha_usuario.png',
                        width: 100,
                        height: 100,
                      )
                      : const SizedBox(width: 100, height: 100),
            ),
          ],
        ),
        Column(
          children: [
            const Text('App'),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: cor_borda_app, width: 3),
              ),
              child:
                  escolha_app != null
                      ? Image.asset(
                        'assets/images/$escolha_app.png',
                        width: 100,
                        height: 100,
                      )
                      : const SizedBox(width: 100, height: 100),
            ),
          ],
        ),
      ],
    );
  }
}
