import 'package:flutter/material.dart';
import 'package:projf_pizza_sul_apresentacao/screens/autoatendimento_page.dart';
import 'package:projf_pizza_sul_apresentacao/screens/cardapio_page.dart';
import 'package:projf_pizza_sul_apresentacao/screens/login_page.dart';

class TelainicialPage extends StatelessWidget {
  const TelainicialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Pesquisar",
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    )
                  ),
                ),
              )
            ),

            IconButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context)=> LoginPage(),
                ),
                );
              }, 
              icon: Icon(Icons.account_circle,
              color: Colors.black,
              size: 40),
              ),
          ],
        ),

        backgroundColor: const Color.fromARGB(255, 236, 147, 12),
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 35,
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            UserAccountsDrawerHeader(
              accountName: Text("Pizza Sul"), 
              accountEmail: Text("alguem@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("asset/images/foto"),
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Início"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: Icon(Icons.person),
                title: Text("Perfil"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Configurações"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Sair"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
          ],
        ),
      ),

      backgroundColor: Colors.amber,

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
            spacing: 15,
            children: [
          
              Image.asset("asset/images/pizzasul_logo_transparente.png",
              width: 200),
          
              SizedBox(
                  height: 8,
                ),
          
              Text(
                "COMO VOCÊ QUER PEDIR?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
                
              Row(
                children: [
                  
                  Expanded(
                    child: SizedBox(
                      height: 300,
                      child: Card(
                                   
                        child: Padding(
                          padding: EdgeInsets.all(10),
                                      
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                      
                              Icon(Icons.local_pizza,
                              size: 80,
                              color: Colors.green,
                              ),
  
                                Text(
                                  "AUTOATENDIMENTO",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                                      
                                Text(
                                  "Monte sua pizza do seu jeito! \nEscolha os sabores, adicione ingredientes e finalize seu pedido.",
                                  ),
                                                        
                                  Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 35,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              minimumSize: Size.fromHeight(40),
                                              maximumSize: Size.fromHeight(40),
                                              textStyle: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              backgroundColor: Colors.green,
                                              foregroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                              )
                                            ),
                                            onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => AutoatendimentoPage(),
                                                  ),
                                                );
                                            }, 
                                            child: Text(
                                              "MONTE SUA PIZZA",
                                              ),
                                            ),
                                        ),
                                      ),
                                    ],
                                  ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                    Expanded(
                      child: SizedBox(
                        height: 300,
                        child: Card(
                        
                          child: Padding(
                            padding: EdgeInsets.all(10),
                        
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                
                                Icon(Icons.delivery_dining,
                                size: 80,
                                color: Colors.red,
                                ),
                        
                                  Text(
                                    "PEÇA PRONTA",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),

                                    Text(
                                      "Veja nosso cardápio completo \nCom pizzas especiais e combos deliciosos.",
                                      ),                
                        
                                      SizedBox(height: 8),
                        
                                    Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            height: 35,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                minimumSize: Size.fromHeight(40),
                                                maximumSize: Size.fromHeight(40),
                                                textStyle: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                backgroundColor: Colors.red,
                                                foregroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                                )
                                              ),
                                              onPressed: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => CardapioPage(),
                                                    ),
                                                  );
                                              }, 
                                              child: Text(
                                                "VER CARDÁPIO",
                                                ),
                                              ),
                                          ),
                                        ),
                                      ],
                                    ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                ],
              )
                
            ],
          ),
              ),
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