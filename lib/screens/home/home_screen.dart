import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../../data/dto/auth/auth_request/sign_up_request.dart';
import '../../data/service/auth/auth_api.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Row(
            children: [],
          )),
      body: LiquidPullToRefresh(

        showChildOpacityTransition: false,
        color: Theme.of(context).primaryColor,
        height: 180,
        onRefresh: () {
          return AuthApi(Dio(BaseOptions(baseUrl: "http://206.189.128.74/api")))
              .signUp(SignUpRequest(phoneNumber: "+998900901116", password: "qwerty12345", firstName: 'ee', lastName: 'ee'));
        },
        child: const CustomScrollView(

          slivers: [
            SliverToBoxAdapter(
              child: FakeCard(),
            )
          ],
        ),
      ),
    );
  }
}

class FakeCard extends StatelessWidget {
  const FakeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: GlassContainer.clearGlass(
        padding: const EdgeInsets.all(16),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        margin: const EdgeInsets.only(right: 24, left: 24, top: 24),
        height: 200,
        width: double.infinity,
        child: const Text("Depending on your requirements you can tweak with the properties and create awesome glass widgets"),
      ),
    );
  }
}
