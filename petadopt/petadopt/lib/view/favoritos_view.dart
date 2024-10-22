import 'package:flutter/material.dart';

class FavoritosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favoritos')),
      body: Center(
        child: Text('Lista de Pets Favoritados'),
      ),
    );
  }
}