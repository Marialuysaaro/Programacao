// ignore_for_file: prefer_const_constructors

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
            prefixIcon: Icon(Icons.person),
            label: Text("Informe seu nome"),
            border: OutlineInputBorder(),
          ),
        ),

        SizedBox(height: 20),

          TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            label: Text("Informe seu e-mail"),
            border: OutlineInputBorder(),
          ),
        ),

        SizedBox(height: 20),

          TextFormField(
          decoration: InputDecoration(
            prefixIcon:Icon(Icons.lock),
            label:Text("Informe sua senha"),
            border: OutlineInputBorder(),
          ),  
          ),

          SizedBox(height: 20),

          TextFormField(
          decoration: InputDecoration(
            prefixIcon:Icon(Icons.calendar_month),
            label:Text("Informe sua senha"),
            border: OutlineInputBorder(),
          ), 
          onTap: () {
            showDatePicker(
              context: context,
             initialDate: DateTime.now(),
              firstDate: DateTime(1900,1,1), 
              lastDate: DateTime.now(),
            );
          }, 
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed:() {},
           child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}
