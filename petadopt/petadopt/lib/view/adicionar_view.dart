import'package:flutter/material.dart';

class AdicionarPetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Pet')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nome do Pet'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Raça'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Idade'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Sexo'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Descrição'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'URL da Foto'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para adicionar pet
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}