import 'package:flutter/material.dart';
import 'package:stickybotweb/consts.dart';

import '../widget/animated_gradient.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AnimatedGradient(),
        Center(
          child: SizedBox(
            width: 225,
            height: 75,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                elevation: 45,
                primary: Constants.buttonColor,
              ),
              child: const Text('ADD'),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
