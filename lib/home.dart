import 'package:flutter/material.dart';

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
          ListTile(
            leading: Icon(Icons.app_registration_outlined, size:36,),
            title: Text("Cadastro"),
            subtitle: Text("Cadastra-se"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
            Navigator.pushNamed(context, '/cadastro');
            }
          ),
        ],
      ),
    );
  }
}