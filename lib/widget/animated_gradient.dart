import 'package:flutter/material.dart';
import 'package:stickybotweb/consts.dart';

class AnimatedGradient extends StatefulWidget {
  const AnimatedGradient({Key? key}) : super(key: key);
  @override
  _AnimatedGradientState createState() => _AnimatedGradientState();
}

class _AnimatedGradientState extends State<AnimatedGradient> {
  List<Color> colorList = [Constants.gradient1, Constants.gradient2];

  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];

  int index = 0;

  Alignment end = Alignment.topRight;
  Alignment begin = Alignment.bottomLeft;

  Color topColor = Constants.gradient1;
  Color bottomColor = Constants.gradient2;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 10), () {
      setState(() {
        bottomColor = Constants.gradient1;
      });
    });

    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      onEnd: () {
        setState(() {
          index = index + 1;

          bottomColor = colorList[index % colorList.length];
          topColor = colorList[(index + 1) % colorList.length];
          begin = alignmentList[index % alignmentList.length];
          end = alignmentList[(index + 2) % alignmentList.length];
        });
      },
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: begin, end: end, colors: [bottomColor, topColor])),
    );
  }
}
