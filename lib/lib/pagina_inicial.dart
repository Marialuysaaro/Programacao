// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:meuapp/chamada.dart';
import 'package:meuapp/conversas.dart';
import 'package:meuapp/status.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          bottom: TabBar (
            tabs: [
              Tab(text: "Conversas",),
              Tab(text: "Status",),
              Tab(text: "Chamadas",),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 10, 89, 5),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Conversas(),
            Status(),
            Chamadas(),
          ],
        ),
      ),
    );
  }
}
