import 'package:flutter/material.dart';

class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  //uma variavél declarada que vai controlar o estado
  bool curtiu = false;
  int z = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text ("Home"),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
          IconButton(
              iconSize: 40,
              icon: curtiu == true
              ? Icon(Icons.favorite, color:Colors.pink)
              : Icon(Icons.favorite_outline, color: Colors.black),
              onPressed: () {
                setState(() {
                  curtiu = true;
                });

                setState(() {
                  z = z+1;
                });
              },
          ),
              Text("Curtidas"),
              Text(z.toString()),
        ],
       ),
      ),
    );
  }
}