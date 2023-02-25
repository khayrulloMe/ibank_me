import 'package:flutter/material.dart';
import '../widgets.dart';

class PasswordScreen extends StatefulWidget {
  static const String route = "/password";

  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var number = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Enter password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                EnterPassword(
                  password: passwordController,
                )
              ],
            ),
            SubmitButton(onClickContinue: () {
              // Navigator.pushNamed(context, SignInVerifyScreen.route);
            })
          ],
        ),
      ),
    );
  }
}

class EnterPassword extends StatelessWidget {
  final TextEditingController password;

  const EnterPassword({
    Key? key,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: password,
      decoration: InputDecoration(
        hintText: "password",
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 4,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        hintStyle: const TextStyle(fontSize: 18, color: Colors.grey),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
