import 'package:flutter/material.dart';
import 'package:projf_pizza_sul_apresentacao/screens/cadastro_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),

      backgroundColor: Colors.amber,

     body: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,

          children: [

            Text(
              
              "Login",
              style: TextStyle(
               color: Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
            
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                label: Text("Email"),
                prefixIcon: Icon(Icons.email_rounded),
                
              ),
            ),
        
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                label: Text("Senha"),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: Text("Esqueceu a senha"),
                  ),
              ],
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                maximumSize: Size.fromHeight(50),
                minimumSize: Size.fromHeight(50),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10)
                )
              ),
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Entrar"),
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Não tem uma conta?"),
                
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => CadastroPage(),
                        ),
                        );
                  }, 
                  child: Text("Cadastre-se"),
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