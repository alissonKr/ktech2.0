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
        actions: const [iconsAppBar()],
        backgroundColor: Colors.black,
        leading: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
          // fit: BoxFit.cover,
          image: AssetImage('assets/images/ktechlogo.pzeng'),
        ))),
        title: Text(title),
      ),
      body: ListView(
        children: [
          Column(
            children: const [
              blocks('assets/images/cloud2.jpg',
                  'A enfermeira diz ao médico: - Tem um homem invisível na sala de espera. O médico responde: - Diga a ele que não posso vê-lo agora.'),
              blocks('assets/images/codding.jpg',
                  'Porque o Batman colocou o Bat-móvel no seguro? R.: Porque ele tem medo que Robin'),
            ],
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
