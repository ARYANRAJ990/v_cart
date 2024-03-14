import 'package:flutter/material.dart';
import 'package:v_cart/Proucts/product.dart';
class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.black.withOpacity((0.1))
      ),
      child: Column(
        children: [
          Row(
           // mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.currency_rupee,
                color:Colors.black ,
              )
            ],
          ),
          SizedBox(
            height: 130,
            width: 130,
           child:  Image.network(widget.product.image),
          )
        ],
      ),
    );
  }
}
