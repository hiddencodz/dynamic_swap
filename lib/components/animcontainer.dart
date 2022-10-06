import 'dart:async';

import 'package:flutter/material.dart';

class AnimContainer extends StatefulWidget {
  const AnimContainer({super.key});

  @override
  State<AnimContainer> createState() => _AnimContainerState();
}

class _AnimContainerState extends State<AnimContainer> {
  final _colors = [
    const Color.fromARGB(255, 14, 44, 121),
    Color.fromARGB(255, 132, 94, 255),
    const Color.fromARGB(255, 151, 203, 255)
  ];
  int index = 0;
  Color color1 = Colors.purpleAccent;
  Color color2 = Colors.blue;
  Color color3 = Colors.white38;

  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(milliseconds: 500), () {
      setState(() {
        color1 = Colors.blueAccent;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 2,
          colors: [color1, color2, color3],
          // begin: Alignment.topRight,
          // end: Alignment.bottomLeft,
        ),
      ),
      onEnd: () {
        index += 1;
        color1 = _colors[index % _colors.length];
        color2 = _colors[(index + 1) % _colors.length];
        color2 = _colors[(index + 2) % _colors.length];
        print(index);
        setState(() {});
      },
    );
  }
}
