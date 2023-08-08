import 'package:flutter/material.dart';

void main () {
  runApp(PaginaInicial());
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/contador': (context) => Contador(),
      '/curtir': (context) => Curtir(),  
    },
    );
  }
}

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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text ("Home"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.calculate, size:36,),
            title: Text("Contador"),
            subtitle: Text("Exemplo de incremento e decremento"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/contador');
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite, size:36,),
            title: Text("Curtir"),
            subtitle: Text("Exemplo de curtir e descrutir"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
            Navigator.pushNamed(context, '/curtir');
            }
          ),
        ],
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
    int x = 100;
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
              print(x);
            });
            },
              child: Text("Incrementar"),
            ),
                        ElevatedButton(
            onPressed: () {
            setState(() {
              x = x - 1;
              print(x);
            });
            },
              child: Text("Descrementar"),
            ),
          ],
        ),
      ),
    );
  }
}