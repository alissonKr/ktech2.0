import 'package:flutter/material.dart';

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
        primarySwatch: Colors.indigo,
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
        leading: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
          // fit: BoxFit.cover,
          image: AssetImage('assets/images/ktech_logo.png'),
        ))),
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 450,
                height: 400,
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/cloud2.jpg'),
                    )),
              ),
              const SizedBox(
                width: 250,
                height: 200,
                child: Text('texto'),
              )
            ],
          ),
          Container(
            color: Colors.grey,
            height: 150,
            width: 450,
          ),
          Container(
            color: Colors.white,
            height: 150,
            width: 450,
          ),
          Container(
            color: Colors.grey,
            height: 150,
            width: 450,
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
