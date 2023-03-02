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
          ),
          FastAccess(),
          LocalPayments()
        ],
      ),
    );
  }
}

class FastAccess extends StatelessWidget {
  const FastAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(left: 16),
            child: const Text(
              "Fast access",
              style: TextStyle(color: Colors.blueGrey, fontSize: 18),
            )),
        SizedBox(
          width: double.infinity,
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              FastAccessItem(
                item: Icons.home_filled,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.attractions_outlined,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.qr_code_2,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.currency_exchange,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.font_download_sharp,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.home_filled,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.attractions_outlined,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.qr_code_2,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.currency_exchange,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.font_download_sharp,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.home_filled,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.attractions_outlined,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.qr_code_2,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.currency_exchange,
                title: 'home',
              ),
              FastAccessItem(
                item: Icons.font_download_sharp,
                title: 'home',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FastAccessItem extends StatelessWidget {
  final IconData item;
  final String title;

  const FastAccessItem({Key? key, required this.item, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Icon(item),
          ),
          Text(title)
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

class LocalPayments extends StatelessWidget {
  const LocalPayments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16),
          child: const Text(
            "Local Payments",
            style: TextStyle(color: Colors.blueGrey, fontSize: 18),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              LocalPayment(
                image: 'assets/any/any.png',
                title: 'optimal',
                cashback: 12,
              ),
              LocalPayment(
                image: 'assets/any/any1.jpeg',
                title: 'optimal',
                cashback: 12,
              ),
              LocalPayment(
                image: 'assets/any/any3.jpeg',
                title: 'optimal',
                cashback: 12,
              ),
              LocalPayment(
                image: 'assets/any/any4.png',
                title: 'optimal',
                cashback: 12,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class LocalPayment extends StatelessWidget {
  final String image;
  final String title;
  final int cashback;

  const LocalPayment({Key? key, required this.image, required this.title, required this.cashback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      margin: EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            child: Image.asset(
              image,
              width: 100,
              height: 70,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Transform.rotate(
            angle: -0.3,
            child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(color: Colors.green.shade100, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "$cashback%",
                  style: const TextStyle(color: Colors.green, fontSize: 16),
                )),
          )
        ],
      ),
    );
  }
}
