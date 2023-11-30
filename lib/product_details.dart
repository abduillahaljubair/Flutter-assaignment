import 'package:flutter/material.dart';

class productdetails extends StatelessWidget
{
  const productdetails({Key?key}):super(key:key);



  @override
  Widget build(BuildContext context) {
return SafeArea(

    child:Scaffold(
      backgroundColor:Colors.red.shade500,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,



          title: const Text("Detail Product"),
        leading: IconButton(
          icon:const Icon(Icons.arrow_back), onPressed: () {  },
        ),
actions: [
  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite,color: Colors.red,),)
],
      ),
      body:Center(
        child:Column(
          children:[
          Image.asset('assets/help.jpg', width: 500,height: 400,),
           const SizedBox (height: 20,),
           Expanded(
              child: Container(
      width: double.infinity,
                padding: EdgeInsets.all(109),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(1),
                    topRight: Radius.circular(1),
                  )
                ),

        child:Column(
        children: [
          Row()

      ],

    )


              ),
            )


          ]
        ),

      ),
    )
                        );
  }
}