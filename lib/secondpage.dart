import 'package:flutter/material.dart';
import 'package:last/PaymentButton.dart';

class BuyNowPage extends StatelessWidget {
  const BuyNowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade500,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Choose Payment Method"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {

              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PaymentButton(imagePath: 'assets/bkash.jpg',),
                PaymentButton(imagePath: 'assets/rocket.jpg'),
                PaymentButton(imagePath: 'assets/visa.jpg'),
                PaymentButton(imagePath: 'assets/mastercard.jpg'),
                PaymentButton(imagePath: 'assets/amex.jpg'),
              ],
            ),


            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButton<String>(
                items: <String>['bkash', 'rocket', 'visa','mastercad','amex'].map((
                    String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {

                },
                hint: Text('Select an option'),
              ),
            ),

            // Go Back button
            ElevatedButton(
              onPressed: () {

                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
