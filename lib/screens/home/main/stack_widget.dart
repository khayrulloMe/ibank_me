import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class StackWidgetMain extends StatefulWidget {
  const StackWidgetMain({Key? key}) : super(key: key);

  @override
  State<StackWidgetMain> createState() => _StackWidgetMainState();
}

class _StackWidgetMainState extends State<StackWidgetMain> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        FakeCard(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 200),
          child: MainPart(),
        )
      ],
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

class MainPart extends StatelessWidget {
  const MainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(24))),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(child: CashbackItem())
            ],
          )
        ],
      ),
    );
  }
}

class CashbackItem extends StatelessWidget {
  const CashbackItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Cashback up to 20% immediately after payment",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Image.asset("assets/cashback.png")
      ],
    );
  }
}
