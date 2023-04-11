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
              blocks('lalallalal', 'assets/images/mundo.mp4'),
              blocks('lalal', 'assets/images/rede.mp4'),
            ],
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
