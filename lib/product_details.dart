import 'package:flutter/material.dart';
import 'secondpage.dart';
import 'PaymentButton.dart';
class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red.shade500,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Detail Product"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {

              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.favorite, color: Colors.red),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/help.jpg', width: 500, height: 400,),
              const SizedBox(height: 20,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "These Red hues look even better now than they did 30 years ago. An homage to heritage, the special edition AJXXXVIII “Aqua” reimagines one of the most coveted AJ8 colorways of all time—it even has the iconic tongue patch. All the game-ready tech you expect is there too, like low-to-the-court cushioning and a secure upper that helps support every move. Dive in"

                            "Shown: Black/Bright Concord/Aquatone/True Red"
                            "Style: DZ3356-001",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10,),


                      Text(
                        '\$99.99',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20,),


                      ElevatedButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BuyNowPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: Text('Buy Now'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}