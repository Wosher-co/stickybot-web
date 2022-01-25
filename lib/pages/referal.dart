import 'package:flutter/material.dart';

class ReferalPage extends StatelessWidget {
  final String refCode;

  const ReferalPage({Key? key, this.refCode = "NONE"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Referal Page"),
          Text(this.refCode),
        ],
      ),
    );
  }
}
