import 'package:flutter/material.dart';

import '../blocks.dart';
import '../components/icons_app_bar.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: const [IconsAppBar()],
        backgroundColor: Colors.black,
        leading: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
          // fit: BoxFit.cover,
          image: AssetImage('assets/images/ktechlogo.png'),
        ))),
        title: Text(title),
      ),
      body: ListView(
        children: [
          Column(
            children: const [
              blocks(
                  'A enfermeira diz ao médico: - Tem um homem invisível na sala de espera. O médico responde: - Diga a ele que não posso vê-lo agora.',
                  'assets/images/mundo.gif'),
              blocks(
                  'Porque o Batman colocou o Bat-móvel no seguro? R.: Porque ele tem medo que Robin',
                  'assets/images/rede.gif'),
            ],
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
