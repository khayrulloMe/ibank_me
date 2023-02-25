import 'package:flutter/material.dart';
import 'package:ibank_me/screens/home/home_screen.dart';
import 'package:ibank_me/screens/pin_code/screen_pin_code.dart';
import 'package:ibank_me/screens/sign_in/password/password_screen.dart';
import 'package:ibank_me/screens/sign_in/sign_in_screen.dart';
import 'package:ibank_me/screens/sign_in_verify/sign_in_verify.dart';
import 'package:ibank_me/screens/splash/splash_screen.dart';

void main()  {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iBank',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
        SplashScreen.route: (context) => const SplashScreen(),
        SignInScreen.route:(context)=>const SignInScreen(),
        PasswordScreen.route:(context)=>const PasswordScreen(),
        SignInVerifyScreen.route:(context)=>const SignInVerifyScreen(),
        PinCodeScreen.route:(context)=>const PinCodeScreen()
      },
      initialRoute: SignInScreen.route,
    );
  }

}
