import 'package:flutter/material.dart';
class PaymentButton extends StatelessWidget {
  final String imagePath;

  const PaymentButton({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {

      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Image.asset(imagePath),
      ),
    );
  }
}