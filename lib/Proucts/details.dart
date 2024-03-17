import 'package:flutter/material.dart';
import 'package:v_cart/Proucts/product.dart';
class DetailsScreen extends StatelessWidget {
  final Product product;
   DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFFFC93F),
                    ),
                borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ1IqBVb0-DoiV0UfeGIvD_s599DMZX93FaA&usqp=CAU",
                fit: BoxFit.contain,),

              ),
            ],
          )
        ],
      ),
    );
  }
}
