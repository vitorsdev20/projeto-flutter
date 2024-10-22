import 'package:flutter/material.dart';
import 'package:petadopt/models/pet.dart';
import 'package:petadopt/view/card_detalhe.dart';
import 'package:petadopt/view/detalhes_pet_view.dart';

class cards_pets extends StatelessWidget {
  final CardModel pet;
  const cards_pets({
    super.key,
    required this.pet
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:460,
      width: 240,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DetalhesPetView(
                  pet: pet
                  ),
                ),
              );
            },
            child:Image.asset(
            pet.imagem, // URL da imagem
            width:150,
            height: 100,
            fit: BoxFit.fill,
          ),   
        ),
        Text(pet.nome),
        Text(pet.descricao),
          // ListTile(
          //   title: Text(pet.nome),
          //   subtitle: Text(
          //       pet.descricao),
          //   trailing: IconButton(
          //     icon: Icon(Icons.favorite_border),
          //     onPressed: () {
          //       // Adicionar à lista de favoritos
          //     },
          //   ),
          //   onTap: () {
          //     // Navegar para detalhes do pet
          //   },
          // ),
        ],
      ),
    );
  }
}
