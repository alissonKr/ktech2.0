import 'package:flutter/material.dart';

class blocks extends StatelessWidget {
  final String text;
  final gifImage;
  const blocks(this.text, this.gifImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(gifImage),
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
