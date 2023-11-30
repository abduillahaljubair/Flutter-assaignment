import 'package:flutter/material.dart';
import 'PaymentButton.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Payment Method'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Choose Payment Method Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PaymentButton(imagePath: 'assets/bkash.png', label: 'BKash'),
                PaymentButton(imagePath: 'assets/rocket.png', label: 'Rocket'),
                PaymentButton(imagePath: 'assets/visa.png', label: 'Visa'),
                PaymentButton(imagePath: 'assets/mastercard.png', label: 'Mastercard'),
                PaymentButton(imagePath: 'assets/amex.png', label: 'AmEx'),
              ],
            ),

            const SizedBox(height: 20),

            // Dropdown Button
            DropdownButton<String>(
              items: ['Option 1', 'Option 2', 'Option 3']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown value change
              },
              hint: Text('Select an option'),

            ),

            const SizedBox(height: 20),

            // Go Back Button
            ElevatedButton(
              onPressed: () {
                // Handle go back button press
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
