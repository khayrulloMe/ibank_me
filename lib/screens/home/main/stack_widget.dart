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
      alignment: Alignment.topCenter,
      children: [
        const FakeCard(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 200),
          child: MainPart(),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade50,
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          margin: const EdgeInsets.symmetric(vertical: 175),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/float.png",
                width: 40,
              )),
        ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Add Card",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
              ),
              Text(
                "Depending on your requirements you can tweak with the properties and create awesome glass widgets",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ],
          )),
    );
  }
}

class MainPart extends StatelessWidget {
  const MainPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: BoxDecoration(color: Colors.blueGrey.shade50, borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(24))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              children: const [Expanded(child: CashbackItem()), Expanded(child: PaymentItem())],
            ),
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
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          const Text(
            "Cashback up to 20% immediately after payment",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          Image.asset("assets/cashback.png")
        ],
      ),
    );
  }
}

class PaymentItem extends StatelessWidget {
  const PaymentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.payment),
              SizedBox(
                width: 8,
              ),
              Text(
                "Payment",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.payment),
              SizedBox(
                width: 8,
              ),
              Text(
                "Payment",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              )
            ],
          ),
        )
      ],
    );
  }
}
