import 'package:flutter/material.dart';

class blocks extends StatelessWidget {
  final String foto;
  final String text;
  const blocks(this.foto, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 400,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(foto),
          )),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoMono',
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.white60)),
      ),
    );
  }
}
