import 'package:flutter/material.dart';


class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Cadastro"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: "Informe seu email",
          ),
        ),
          TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: "Informe sua senha",
          ),  
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed:() {},
           child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}
