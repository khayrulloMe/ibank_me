import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ibank_me/data/dto/auth/auth_request/sign_in_request.dart';
import 'package:ibank_me/data/dto/auth/auth_request/sign_up_request.dart';
import 'package:ibank_me/screens/sign_in/password/password_screen.dart';
import 'package:ibank_me/screens/sign_in/widgets.dart';

import '../../data/service/auth/auth_api.dart';

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
      appBar: AppBar(),
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
              onClickContinue: () async {
                await AuthApi(Dio(BaseOptions(baseUrl: "http://206.189.128.74/api")))
                    .signIn(SignInRequest(phoneNumber: "+998900909636", password: "qwerty12345"));
              },
            )
          ],
        ),
      ),
    );
  }
}
