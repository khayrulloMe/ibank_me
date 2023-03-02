import 'package:flutter/material.dart';
import 'package:ibank_me/screens/sign_in/password/password_screen.dart';
import 'package:ibank_me/screens/sign_in/widgets.dart';


class SignInScreen extends StatefulWidget {
  static const String route = "/signIn";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController controller = TextEditingController();
  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 32,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TopOfSignIn(onTabConnect: () {}),
                PhoneNumberInput(
                  completeNumber: controller,
                  countryCode: (String code) {
                    this.code = code;
                    setState(() {});
                  },
                ),
              ],
            ),
            SubmitButton(
              onClickContinue: () {
                Navigator.pushNamed(context, PasswordScreen.route, arguments: {"number": "$code${controller.text}"});
              },
            )
          ],
        ),
      ),
    );
  }
}
