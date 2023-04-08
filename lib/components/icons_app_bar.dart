import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IconsAppBar extends StatelessWidget {
  const IconsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () async {
            const url = 'https://www.instagram.com/kavinsky.tech/';
            final uri = Uri.parse(url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: const FaIcon(
            FontAwesomeIcons.instagram,
            size: 23,
            color: Colors.cyan,
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () async {
            const url = 'https://www.linkedin.com/company/kavinsky-tech/about/';
            final uri = Uri.parse(url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: const FaIcon(
            FontAwesomeIcons.linkedin,
            size: 23,
            color: Colors.cyan,
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () async {
            const url = 'http://wa.me/555197352095';
            final uri = Uri.parse(url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: const FaIcon(
            FontAwesomeIcons.whatsapp,
            size: 23,
            color: Colors.cyan,
          ),
        )
      ],
    );
  }
}
