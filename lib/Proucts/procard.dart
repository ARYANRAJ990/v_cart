import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
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
      height: MediaQuery.of(context).size.height/3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.grey.withOpacity((0.1))
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFFFC93F),
              ),
              borderRadius: BorderRadius.circular(10.0), // Set border radius to 10 pixels
            ),
            child: SizedBox(
              height: 130,
              width: 130,
              child: Image.network(
                widget.product.image,
                fit: BoxFit.contain,
              ),
            ),
          ),
            SizedBox(
              height: 40,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.product.name,
              style: TextStyle(
                fontSize: 18,
                //fontFamily: GoogleFonts.inter,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 30),
              Text(
                "\₹${widget.product.price}", // Concatenate currency symbol with price
                style: TextStyle(
                  fontSize: 18,
                  //fontFamily: GoogleFonts.inter,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
