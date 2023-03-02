import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ibank_me/data/source/remote/api/auth_api.dart';
import 'package:ibank_me/data/source/remote/request/auth/SignUpRequest.dart';
import 'package:ibank_me/screens/home/main/stack_widget.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      showChildOpacityTransition: false,
      color: Theme.of(context).primaryColor,
      height: 150,
      animSpeedFactor: 1,
      borderWidth: 5,
      onRefresh: () {
        return AuthApi(Dio(BaseOptions(baseUrl: "http://206.189.128.74/api"))).signUp(SignUpRequest(phoneNumber: "+998900901116", password: "qwerty12345", firstName: 'ee', lastName: 'ee'));
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: const [Padding(padding: EdgeInsets.symmetric(horizontal: 24)), StackWidgetMain()],
          ))
        ],
      ),
    );
  }

  _MainScreenState();
}
