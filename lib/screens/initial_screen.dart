import 'package:flutter/material.dart';

import '../components/block1/block1.dart';
import '../components/block2/block2.dart';
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
        shrinkWrap: true,
        children: [
          Column(
            children: [
              block1('assets/video1/mundo.mp4'),
              block2('assets/video2/rede.mp4'),
            ],
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
