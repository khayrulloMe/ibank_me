import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool state;
  const DotIndicator({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (state) {
      return SizedBox(
        height: 30,
        width: 30,
        child: Image.asset(
          "assets/doira.png",
          color: Colors.deepPurple,
        ),
      );
    } else {
      return SizedBox(
        height: 30,
        width: 30,
        child: Image.asset("assets/aylana.png"),
      );
    }
  }
}

