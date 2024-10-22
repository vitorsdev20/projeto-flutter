import 'package:flutter/material.dart';
import 'package:petadopt/models/pet.dart';

class ProdutoDetalheScreen extends StatelessWidget {
  final CardModel pet;

  const ProdutoDetalheScreen({
    super.key,
    required this.pet,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.nome),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            color: const Color.fromARGB(255, 236, 244, 237),
            width: double.infinity,
            child: Image.asset(
              pet.imagem,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
          Row(
            children: [
              Text(pet.raca),
              Icon(
                Icons.favorite_border_outlined,
              ),
            ],
          ),
          Row(
            children: [
              Text(pet.sexo),
              Icon(
                Icons.favorite_border_outlined,
              ),
            ],
          ),
          
          Text(pet.idade.toString()),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.remove),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Center(child: Text('1')),
                  ),
                ],
              ),
              Text("R\$4.66")
            ],
          ),
          Divider(),
          Text("Product Detail"),
          Text(
            "A maçã é rica em fibras, vitaminas B1, B2 e sais minerais (fósforo e ferro). Auxilia o bom funcionamento intestinal, contém propriedades antiinflamatórias, antibacterianas e antivirais.",
          ),
          Divider(),
          Row(
            children: [
              Text("Nutritions"),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 2.0,
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 208, 208, 208),
                    borderRadius: BorderRadius.circular(6)),
                child: Text("100gr"),
              )
            ],
          ),
          Divider(),
          Row(
            children: [
              Text("Nutritions"),
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: const EdgeInsets.all(20),
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}
