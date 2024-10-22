import 'package:flutter/material.dart';

class CardModel {
  final String imagem;
  final String nome;
  final String raca;
  final int idade;
  final String sexo;
  final String descricao;

  CardModel({
    required this.imagem,
    required this.nome,
    required this.raca,
    required this.idade,
    required this.sexo,
    required this.descricao,
  });
}