import 'package:flutter/material.dart';
import 'package:projf_pizza_sul_apresentacao/screens/telainicial_page.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            spacing: 20,
            children: [
          
              Row(
                spacing: 1,
                children: [
                  Expanded(
                    flex: 7,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Nome:"),
                      ),
                    ),
                  ),
                  
                  Expanded(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Sobrenome:"),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Rua:"),
                      ),
                    ),
                  ),
                  
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Nº:"),
                      ),
                    ),
                  ),
                ],
              ),
              
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Complemento:")
                      ),
                    ),
                  ),
                  
                  Expanded(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Bairro:")
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Cidade:")
                      ),
                    ),
                  ),
                  
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("CEP:")
                      ),
                    ),
                  ),
                  
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("UF:")
                      ),
                    ),
                  ),
                ],
              ),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Ponto de referencia:")
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => TelainicialPage(),
                          ),
                        );
                    }, 
                    child: Text("Cadastrar"),
                    ),
                  
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Limpar"),
                      ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}	