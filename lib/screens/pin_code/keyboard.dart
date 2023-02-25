import 'package:flutter/material.dart';

typedef stringValue = String Function(String);

class AppKeyboard extends StatefulWidget {
  final stringValue;

  const AppKeyboard({Key? key, this.stringValue}) : super(key: key);

  @override
  State<AppKeyboard> createState() => _AppKeyboardState();
}

class _AppKeyboardState extends State<AppKeyboard> {
  String text = "";
  static const double buttonSize = 80;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            keyboardButton("1"),
            keyboardButton("2"),
            keyboardButton("3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            keyboardButton("4"),
            keyboardButton("5"),
            keyboardButton("6"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            keyboardButton("7"),
            keyboardButton("8"),
            keyboardButton("9"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            keyboardButton(""),
            keyboardButton("0"),
            keyboardButtonIcon(),
          ],
        ),
      ],
    );
  }

  Widget keyboardButton(String element) {
    if (element.isEmpty) {
      return const SizedBox(
        width: buttonSize,
        height: buttonSize,
      );
    } else {
      return InkWell(
        onTap: () {
          if (text.length < 4) {
            text += element;
          }
          widget.stringValue(text);
        },
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(90),
        ),
        child: SizedBox(
          width: buttonSize,
          height: buttonSize,
          child: Center(
            child: Text(
              element,
              style: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),
            ),
          ),
        ),
      );
    }
  }

  Widget keyboardButtonIcon() {
    return InkWell(
      onTap: () {
        if (text.isNotEmpty) {
          text = text.substring(0, text.length - 1);
        }
        widget.stringValue(text);
      },
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(90),
      ),
      child: const SizedBox(
        width: buttonSize,
        height: buttonSize,
        child: Center(
          child: Icon(Icons.backspace_rounded),
        ),
      ),
    );
  }
}
