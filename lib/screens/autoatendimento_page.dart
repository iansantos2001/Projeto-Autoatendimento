import 'package:flutter/material.dart';

class AutoatendimentoPage extends StatelessWidget {
  const AutoatendimentoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 147, 12),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MONTE DO SEU JEITO!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Adicione ou remova ingredientes da sua pizza",
              style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),

                    child: Column(
                      children: [

                        // Arredondar as pontas da imagem
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1513104890138-7c749659a591",
                            height: 220,
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        // Escolher o tamanho
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.grey.shade300,
                            ),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              // Título do tamanho das pizzas
                              Text(
                                "ESCOLHA O TAMANHO",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              // Tamanhos das Pizzas
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.red,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),

                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.local_pizza,
                                          color: Colors.orange,
                                        ),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text(
                                          "PEQUENA",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text("20 cm"),

                                        Text("2 fatias"),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text(
                                          "R\$ 39,00",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    width: 5,
                                    ),

                                  // Tamanho médio
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),

                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.local_pizza,
                                          color: Colors.orange,
                                        ),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text(
                                          "MÉDIA",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text("30 cm"),

                                        Text("4 fatias"),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text(
                                          "R\$ 54,00",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  
                                  SizedBox(
                                    width: 5,
                                  ),

                                  // Tamanho grande
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),

                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.local_pizza,
                                          color: Colors.orange,
                                        ),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text(
                                          "GRANDE",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text("40 cm"),

                                        Text("8 fatias"),

                                        SizedBox(
                                          height: 8,
                                        ),

                                        Text(
                                          "R\$ 84,00",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                ),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "INGREDIENTES ATUAIS",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 8,
                              ),

                              // Ingrediente - Calabresa fatiada
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.fastfood),
                                  ),

                                  SizedBox(
                                    width: 12,
                                  ),

                                  Expanded(
                                    child: Text(
                                      "Calabresa fatiada",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),

                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove),
                                    label: Text("Remover"),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 8,
                              ),

                              // Ingrediente - Cebola
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.fastfood),
                                  ),

                                  SizedBox(
                                    width: 12,
                                  ),

                                  Expanded(
                                    child: Text(
                                      "Cebola",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),

                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove),
                                    label: Text("Remover"),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 8,
                              ),

                              // Ingrediente - Muçarela
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.fastfood),
                                  ),

                                  SizedBox(
                                    width: 12,
                                  ),

                                  Expanded(
                                    child: Text(
                                      "Muçarela",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),

                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove),
                                    label: Text("Remover"),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                ),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ADICIONAR INGREDIENTES",
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 8,
                              ),

                              // Ingrediente - Bacon
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.restaurant),
                                  ),

                                  SizedBox(
                                    width: 12,
                                  ),

                                  Expanded(
                                    child: Text(
                                      "Bacon",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),

                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    label: Text("Adicionar"),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 8,
                              ),

                              // Ingrediente - Presunto
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.restaurant),
                                  ),

                                  SizedBox(
                                    width: 12,
                                  ),

                                  Expanded(
                                    child: Text(
                                      "Presunto",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),

                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    label: Text("Adicionar"),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 8,
                              ),

                              // Ingrediente - Azeitona
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.restaurant),
                                  ),

                                  SizedBox(
                                    width: 12,
                                  ),

                                  Expanded(
                                    child: Text(
                                      "Azeitona",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),

                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                    label: Text("Adicionar"),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 24,
                              ),

                              // Valor do pedido
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "VALOR TOTAL",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    SizedBox(
                                      height: 8,
                                    ),

                                    Text(
                                      "R\$ 59,90",
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 16,
                              ),

                              // Botão de finalizar pedido
                              SizedBox(
                                width: double.infinity,
                                height: 60,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  label: Text(
                                    "FINALIZAR PEDIDO",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        backgroundColor: const Color.fromARGB(255, 250, 46, 31),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,        
        items: [
          
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inicio"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            label: "Cupons",
            ),

          BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2_outlined),
              label: "Pedidos",
              ),

          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Configurações"
              ),
          ],
        ),

    );
  }
}