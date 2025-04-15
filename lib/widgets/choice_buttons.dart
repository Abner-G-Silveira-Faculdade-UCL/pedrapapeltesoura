import 'package:flutter/material.dart';

class ChoiceButtons extends StatelessWidget {
  final Function(String) onEscolha;

  const ChoiceButtons({super.key, required this.onEscolha});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () => onEscolha('pedra'),
          child: Image.asset('assets/images/pedra.png', width: 80, height: 80),
        ),
        GestureDetector(
          onTap: () => onEscolha('papel'),
          child: Image.asset('assets/images/papel.png', width: 80, height: 80),
        ),
        GestureDetector(
          onTap: () => onEscolha('tesoura'),
          child: Image.asset(
            'assets/images/tesoura.png',
            width: 80,
            height: 80,
          ),
        ),
      ],
    );
  }
}
