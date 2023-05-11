// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Meu Status"),
          subtitle: Text("Toque para atualizar seu status"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://media.istockphoto.com/id/1322511698/pt/foto/chicken-with-freshly-laid-eggs.jpg?s=612x612&w=is&k=20&c=PD-5g0G0DjzFGZ0pewqZ64Jasmc_vhhFgXUsNg0WOXE=",
            ),
          ),
          onTap: () {},
        ),
        ListTile (
          title:Text("Atualizações recentes"),
        ),
        ListTile(
          title: Row(
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(
                color:  Color.fromARGB(255, 58, 125, 60),
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.verified, 
              color:  Colors.green,
              size: 18,
              ),
          ],
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/124/124034.png?w=360"),
          ),
        ),
        ListTile(
            title: Text("Vida❤️"),
            subtitle: Text("Hoje 11:00"),
            leading: CircleAvatar(),
          ),
        ListTile(
            title: Text("Karolaine❤️"),
            subtitle: Text("Hoje 12:10"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://i1.wp.com/files.agro20.com.br/uploads/2019/10/vaca-2.jpg?fit=1024%2C681&ssl=1"),
            ),
          ),
      ],
    );
    
  }
}