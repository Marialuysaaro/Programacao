// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

@override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Color.fromARGB(255, 228, 120, 147),
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          TextFormField(
            decoration: InputDecoration(  
              prefixIcon: Icon(Icons.person),
              label: Text("E-mail"),
              border: OutlineInputBorder(

              ),
            ),
          ),
            SizedBox(height: 20),

          TextFormField(
            decoration: InputDecoration( 
              prefixIcon: Icon(Icons.lock_open),
              label: Text("Senha"),
              border: OutlineInputBorder(

              ),
            ),
          ),
          SizedBox(height: 30,),

          ElevatedButton(
            onPressed: () {
              print("O botão salvar foi clicado");
            },
           style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 97, 170, 243),
            ),
            child: Text("Salvar"),
          )
        ],
      ),    
    );
  }
}