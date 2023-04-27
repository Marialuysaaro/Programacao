// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


void main() {
  runApp(MeuApp());
}


class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaInicial(),
    );
    
  }
}


class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: Color.fromARGB(255, 10, 89, 5),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Grupo da Família"),
            subtitle: Text("Olá Galera..."),
            leading:CircleAvatar(
              backgroundImage: NetworkImage("https://media.istockphoto.com/id/1322511698/pt/foto/chicken-with-freshly-laid-eggs.jpg?s=612x612&w=is&k=20&c=PD-5g0G0DjzFGZ0pewqZ64Jasmc_vhhFgXUsNg0WOXE="),
            ),
            trailing: Text("23:49"),
          ),
                    ListTile(
            title: Text("eu"),
            subtitle: Text("oi"),
            leading: Icon(Icons.account_circle,size: 50,) ,
            trailing: Text("7:00"),
          ),
                    ListTile(
            title: Text("Karolaine"),
            subtitle: Text("HIIIIIIIIIIIIIIIIIIIIII"),
             leading:CircleAvatar(
              backgroundImage: NetworkImage("https://media.istockphoto.com/id/1333720104/pt/foto/mature-cow-black-and-white-curious-gentle-surprised-look.jpg?s=612x612&w=is&k=20&c=ZXWr1u-StaVLCamXxeMWeWDpDY3YFhW1s0Qdwc4M-dM="),
            ),
            trailing: Text("22:00"),
          ),
        ],
      ),
    );
  }
}
