import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibank_me/screens/pin_code/screen_pin_code.dart';

import '../sign_in/sign_in_screen.dart';
import '../sign_in/widgets.dart';

class SignInVerifyScreen extends StatelessWidget {

static const route = "/verify";
  const SignInVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopSignInVerify(
                  number: "",
                ),
                VerifyTextField(password: (String password) {  },),
                const SizedBox(height: 8,),
                const SMSTime()

              ],
            ),
            SubmitButton(onClickContinue: () {
              Navigator.pushNamed(context, PinCodeScreen.route);

            },)
          ],
        ),
      ),
    );
  }
}





class TopSignInVerify extends StatelessWidget {
  final String number;

  const TopSignInVerify({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Approve",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          "Enter the code which we sent you to the number $number",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Enter the code",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class VerifyTextField extends StatelessWidget {
  final Function(String password) password;

  const VerifyTextField({Key? key, required this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      autofocus: true,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 3,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
      ),
      onChanged: (val) {
        password.call(val);
      },
    );
  }
}

class SMSTime extends StatefulWidget {
  const SMSTime({Key? key}) : super(key: key);

  @override
  State<SMSTime> createState() => _SMSTimeState();
}

class _SMSTimeState extends State<SMSTime> {
  int _counter = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }
  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Send again:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black45),),
        const SizedBox(width: 8,),
        Text("$_counter",style: const TextStyle(color: Colors.black45,fontWeight: FontWeight.w700,fontSize: 18),)
      ],
    );
  }
}

