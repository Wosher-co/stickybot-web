import 'package:flutter/material.dart';
import 'package:stickybotweb/widget/screen.dart';

class ReferalPage extends StatelessWidget {
  final String refCode;

  const ReferalPage({Key? key, this.refCode = "NONE"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenPage(
        description:
            'Te han invitado a usar StickyBot, con el codigo: $refCode');
  }
}
