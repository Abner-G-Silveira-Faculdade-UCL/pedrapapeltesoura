import 'package:flutter/material.dart';
import '../models/game_model.dart';
import '../widgets/score_board.dart';
import '../widgets/game_area.dart';
import '../widgets/choice_buttons.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final GameModel _modelo = GameModel();

  void _quandoEscolhe(String escolha) {
    setState(() {
      _modelo.jogar(escolha);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedra Papel Tesoura'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ScoreBoard(
            pontos_usuario: _modelo.pontos_usuario,
            empates: _modelo.empates,
            pontos_app: _modelo.pontos_app,
          ),
          GameArea(
            escolha_usuario: _modelo.escolha_usuario,
            escolha_app: _modelo.escolha_app,
            cor_borda_usuario: _modelo.getCorBorda(
              _modelo.escolha_usuario ?? '',
              true,
            ),
            cor_borda_app: _modelo.getCorBorda(
              _modelo.escolha_app ?? '',
              false,
            ),
          ),

          ChoiceButtons(onEscolha: _quandoEscolhe),
        ],
      ),
    );
  }
}
