import 'package:flutter/cupertino.dart';
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
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 400,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    product.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF8B23F),
                      fontSize: 31,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text(
                            'Description :-',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.description,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.89,
                              color: Color(0xFFABABAB),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 50.0),
                      child: Text('Status :-  ',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFFFC93F),
                      ),),
                    ),
                    Text(product.status,style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),)
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 50.0),
                      child: Text('Price :-  ',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFFFC93F),
                      ),),
                    ),
                    Text("\₹${product.price}",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                    ),)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
