import 'dart:math';
import 'package:flutter/material.dart';

class GameModel {
  String? escolha_usuario;
  String? escolha_app;
  int pontos_usuario = 0;
  int pontos_app = 0;
  int empates = 0;
  final Random random = Random();

  void jogar(String escolha) {
    escolha_usuario = escolha;
    escolha_app = ['pedra', 'papel', 'tesoura'][random.nextInt(3)];
    atualizar_pontos();
  }

  void atualizar_pontos() {
    if (escolha_usuario == escolha_app) {
      empates++;
    } else if ((escolha_usuario == 'pedra' && escolha_app == 'tesoura') ||
        (escolha_usuario == 'tesoura' && escolha_app == 'papel') ||
        (escolha_usuario == 'papel' && escolha_app == 'pedra')) {
      pontos_usuario++;
    } else {
      pontos_app++;
    }
  }

  Color getCorBorda(String escolha, bool usuario) {
    if (escolha_usuario == null || escolha_app == null)
      return Colors.transparent;

    if (escolha_usuario == escolha_app) {
      return Colors.orange;
    }

    bool venceu = false;
    if (usuario) {
      venceu =
          (escolha_usuario == 'pedra' && escolha_app == 'tesoura') ||
          (escolha_usuario == 'tesoura' && escolha_app == 'papel') ||
          (escolha_usuario == 'papel' && escolha_app == 'pedra');
    } else {
      venceu =
          (escolha_app == 'pedra' && escolha_usuario == 'tesoura') ||
          (escolha_app == 'tesoura' && escolha_usuario == 'papel') ||
          (escolha_app == 'papel' && escolha_usuario == 'pedra');
    }

    return venceu ? Colors.green : Colors.transparent;
  }
}
