import 'package:flutter/material.dart';
import 'package:ibank_me/screens/home/home_screen.dart';

import 'indecator_dot.dart';
import 'keyboard.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({Key? key}) : super(key: key);
  static const String route = "pinCode";

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  String _pinCode = "";
  late final Function(String element) onTap;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 10),
          Center(
              child: SizedBox(
            width: 200,
            height: 200,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/logo.png",
                )),
          )),
          const Center(
            child: Text(
              "PIN kiriting",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotIndicator(state:_pinCode.isNotEmpty),
              DotIndicator(state:_pinCode.length >= 2),
              DotIndicator(state:_pinCode.length >= 3),
              DotIndicator(state:_pinCode.length >= 4),
            ],
          ),
          GestureDetector(
            onTap: () {
              print("click  PIN qayta o'rnatish");
            },
            child: const Center(
              child: Text(
                "PIN qayta o'rnatish",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16, decoration: TextDecoration.underline),
              ),
            ),
          ),
          AppKeyboard(stringValue: (value) {
            setState(() {});
            if (value.length == 4&&value=="7777") {
               Navigator.pushNamedAndRemoveUntil(context, HomeScreen.route,(Route<dynamic> route) => false);

            }
            return _pinCode = value;
          })
        ],
      ),
    );
  }
}
