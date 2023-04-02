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
              Container(
                width: 450,
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/cloud2.jpg'),
                )),
              ),
              Container(
                  width: 450,
                  height: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/codding.jpg'),
                  ))),
            ],
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
