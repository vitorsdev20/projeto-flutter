import 'package:flutter/material.dart';
import 'package:petadopt/models/pet.dart';

class DetalhesPetView extends StatelessWidget {
  final CardModel pet;
  DetalhesPetView({super.key, required this.pet});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes do Pet')),
      body: Center(
        child: Text('Informações Detalhadas do Pet'),
      ),
    );
  }
}