import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Kavinsky Tech'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.facebook,
                size: 23,
                color: Colors.cyan,
              ),
              SizedBox(width: 10),
              FaIcon(
                FontAwesomeIcons.instagram,
                size: 23,
                color: Colors.cyan,
              ),
              SizedBox(width: 10),
              FaIcon(
                FontAwesomeIcons.linkedin,
                size: 23,
                color: Colors.cyan,
              ),
              SizedBox(width: 10),
              FaIcon(
                FontAwesomeIcons.whatsapp,
                size: 23,
                color: Colors.cyan,
              )
            ],
          )
        ],
        backgroundColor: Colors.black,
        leading: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
          // fit: BoxFit.cover,
          image: AssetImage('assets/images/ktechlogo.png'),
        ))),
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              images('assets/images/cloud2.jpg'),
              images('assets/images/codding.jpg'),
            ],
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class images extends StatelessWidget {
  final String foto;
  const images(this.foto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(foto),
      )),
    );
  }
}
