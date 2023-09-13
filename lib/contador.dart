// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
    int x = 100;

  @override
  void initState() {
    super.initState();
    obtemValor(); //lê da memória fora que abre a própria
  }
  void obtemValor() async{
    //busca um valor da memória persistente
    final prefs = await SharedPreferences.getInstance();
    setState(() {
          x = prefs.getInt('contador')?? 0;
    });
  }
  void salvarValor(int valor) async{
    // salva um valor da memória persistente
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('contador', valor);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Meu Aplicativo"),
      ),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            ElevatedButton(
            onPressed: () {
            setState(() {
              x = x + 1;
            });
            salvarValor(x);
            },
              child: Text("Incrementar"),
            ),
                        ElevatedButton(
            onPressed: () {
            setState(() {
              x = x - 1;
            });
            salvarValor(x);
            },
              child: Text("Descrementar"),
            ),
          ],
        ),
      ),
    );
  }
}