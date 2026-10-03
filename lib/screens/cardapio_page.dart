import 'package:flutter/material.dart';

class CardapioPage extends StatelessWidget {
   CardapioPage({super.key});

final List salgadas = [
  {"nome": "Calabresa",
  "ingredientes": "Calabresa, Cebola e Queijo",
  "Preço": "R\$ 45,00",
  "icone": Icons.local_pizza,
  },
  {"nome": "portuguesa",
   "ingredientes": "Presunto, Ovo, Cebola e Ervilha",
  "Preço": "R\$ 50,00",
  "icone": Icons.local_pizza,
  },
  {"nome": "Frango com Catupiry",
   "ingredientes": "Frango desfiado e Catupiry",
  "Preço": "R\$ 55,00",
  "icone": Icons.local_pizza,
  },
  {"nome": "Mussarela",
   "ingredientes": "Molho, Mussarela e Orégano",
  "Preço": "R\$ 55,00",
  "icone": Icons.local_pizza,
  },
  {"nome": "strogonoff",
   "ingredientes": "Frango ao molho e Strogonoff",
  "Preço": "R\$ 55,00",
  "icone": Icons.local_pizza,
  }
];

  final List doces = [
    {
      "nome": "Chocolate",
       "ingredientes": "Chocolate ao leite",
      "preco": "R\$ 40,00",
      "icone": Icons.local_pizza,
    },

    {
      "nome": "Prestigio",
       "ingredientes": "Chocolate e coco ralado",
      "preco": "R\$ 40,00",
      "icone": Icons.local_pizza,
    },

    {
      "nome": "KitKat",
       "ingredientes": "Chocolate preto ou branco e KitKat",
      "preco": "R\$ 40,00",
      "icone": Icons.local_pizza,
    },

    {
      "nome": "Chocolate branco com nozes",
       "ingredientes": "Chocolate branco e Nozes picadas",
      "preco": "R\$ 40,00",
      "icone": Icons.local_pizza,
    },

    {
      "nome": "Chocolate com morango",
       "ingredientes": "Chocolate com morango picado",
      "preco": "R\$ 40,00",
      "icone": Icons.local_pizza,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 147, 12),
        title: Text("Cardápio"),
      ),
      backgroundColor: Colors.amber,
      
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Image.asset("asset/images/pizzabanner.png"),
                        

                  Padding(
                    padding:EdgeInsets.all(10),
                    child:Text("Pizzas salgadas",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    ),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: const
                    NeverScrollableScrollPhysics(),
                    itemCount: salgadas.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          
                          leading: Image.network( //imagem de pizza
                            "https://images.unsplash.com/photo-1513104890138-7c749659a591",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover),

                        title: Text(
                          salgadas[index]["nome"],
                        ),
                        subtitle: Text(
                          salgadas[index][
                            "ingredientes"
                          ]
                        ),

                        trailing: ElevatedButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("${salgadas[index]
                              ["nome"]} adicionada!"
                              ),
                              ),
                              );
                          }, 
                          child: Text("pedir")),
                        
                        ),
                      );
                    }
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Pizzas doces",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const
                    NeverScrollableScrollPhysics(),
                    itemCount: doces.length,
                    itemBuilder: (context, index) {
                      return Card(margin: const
                      EdgeInsets.all(10),
                      
                      child: ListTile( //Imagem da pizza
                        leading: Image.asset("asset/images/pizzadoce.png",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover),
                        
                        //icone da pizza
                        //Icon(doces[index]["icone"],
                        //color:  Colors.pink,
                        //),

                        title: Text(doces[index]["nome"],
                        ),
                        subtitle: Text(
                          doces[index][
                            "ingredientes"
                          ]
                        ),
                        trailing: ElevatedButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("${doces[index]
                              ["nome"]} adicionada!"
                              ),
                              ),
                              );
                          }, 
                          child: Text("pedir"),
                          ),
                       
                      ),
                      );

                      
                    },
                    ),
                ],
              ),
            ),

    );
  }
}