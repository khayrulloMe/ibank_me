import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.person),
            expandedHeight: 200,
          ),
        ],
      ),
    );
  }
}
