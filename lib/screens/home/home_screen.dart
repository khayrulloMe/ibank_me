import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:ibank_me/screens/home/chat/chat_screen.dart';
import 'package:ibank_me/screens/home/main/main_screen.dart';
import 'package:ibank_me/screens/home/menu/menu_screen.dart';
import 'package:ibank_me/screens/home/payment/payment_screen.dart';
import 'package:ibank_me/screens/home/transfer/transfer_screen.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import '../../data/dto/auth/auth_request/sign_up_request.dart';
import '../../data/service/auth/auth_api.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = <Widget>[const MainScreen(), const TransferScreen(), const PaymentScreen(), const ChatScreen(), const MenuScreen()];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(height: 60, indicatorColor: Colors.transparent),
          child: NavigationBar(
            selectedIndex: index,
            onDestinationSelected: (i) {
              setState(() {
                index = i;
              });
            },
            destinations: [
              NavigationDestination(
                  icon: Image.asset(
                    "assets/uzum.png",
                    width: 24,
                    color: Colors.grey.shade500,
                  ),
                  selectedIcon: Image.asset(
                    "assets/uzum.png",
                    width: 24,
                    color: Colors.deepPurple,
                  ),
                  label: "home"),
              NavigationDestination(
                  icon: Image.asset(
                    "assets/transfer.png",
                    width: 24,
                    color: Colors.grey.shade500,
                  ),
                  selectedIcon: Image.asset(
                    "assets/transfer.png",
                    width: 24,
                    color: Colors.deepPurple,
                  ),
                  label: "home"),
              const NavigationDestination(icon: Icon(Icons.payment), label: "home"),
              const NavigationDestination(icon: Icon(Icons.chat), label: "home"),
              const NavigationDestination(icon: Icon(Icons.menu), label: "home"),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Row(
              children: [],
            )),
        body: screens[index]);
  }
}


