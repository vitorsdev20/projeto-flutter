import 'package:flutter/material.dart';
import 'package:petadopt/mock/cards_fake_db.dart';
import 'package:petadopt/models/pet.dart';
import 'package:petadopt/view/card_detalhe.dart';
import 'package:petadopt/view/perfil_view.dart'; // Importando a tela de perfil
import 'package:petadopt/widgets/cards_pets.dart';
import 'adicionar_view.dart';
import 'favoritos_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String searchQuery = ''; // Para armazenar o texto da pesquisa

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              // Barra de pesquisa
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value.toLowerCase();
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      hintText: 'Pesquisar pets...',
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 10), // Espaço entre a barra e o ícone

              // Ícone de perfil
              GestureDetector(
                onTap: () {
                  // Navegar para a tela de perfil
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaUsuario()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/man.png'), // Substituir pela imagem desejada
                  radius: 20,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              itemCount: appImages
                  .where((pet) => pet.nome.toLowerCase().contains(searchQuery))
                  .length, // Filtra os pets com base na pesquisa
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                var filteredPets = appImages
                    .where((pet) => pet.nome.toLowerCase().contains(searchQuery))
                    .toList(); // Cria uma lista filtrada
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: GestureDetector(
                    child: cards_pets(pet: filteredPets[index]),
                  ),
                );
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdicionarPetView()),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
