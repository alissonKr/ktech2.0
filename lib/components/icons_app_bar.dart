import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class iconsAppBar extends StatelessWidget {
  const iconsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
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
    );
  }
}
