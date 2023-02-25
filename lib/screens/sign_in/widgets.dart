import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class TopOfSignIn extends StatelessWidget {
  final Function() onTabConnect;

  const TopOfSignIn({Key? key, required this.onTabConnect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.settings_voice,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "Connection with bank",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor),
        )
      ],
    );
  }
}

class PhoneNumberInput extends StatelessWidget {
  final TextEditingController completeNumber;
  final Function(String code) countryCode;

  const PhoneNumberInput({Key? key, required this.completeNumber, required this.countryCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        const Text(
          "Welcome",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        const SizedBox(height: 24),
        const Text(
          "Enter phone number",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        IntlPhoneField(
          controller: completeNumber,
          autofocus: true,
          invalidNumberMessage: "",
          decoration: InputDecoration(
            hintText: "99 777 11 22",
            hintStyle: const TextStyle(color: Colors.grey),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 4,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
          ),
          dropdownIcon: const Icon(
            Icons.add,
            color: Colors.transparent,
          ),
          onChanged: (v) {
            countryCode.call(v.countryCode);
          },
          initialCountryCode: 'UZ',
          disableLengthCheck: false,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        )
      ],
    );
  }
}

class SubmitButton extends StatelessWidget {
  final Function() onClickContinue;

  const SubmitButton({Key? key, required this.onClickContinue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClickContinue.call();
      },
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 201, 184, 255), borderRadius: BorderRadius.all(Radius.circular(15))),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Text(
          "Continue",
          textAlign: TextAlign.center,
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
