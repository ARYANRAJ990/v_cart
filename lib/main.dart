import 'package:flutter/material.dart';
import 'package:v_cart/login.dart';


void main() {
  runApp(const Shop());
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Start(), // Set Start as the home screen
    );
  }
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/first.png'),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Padding(
            padding:  const EdgeInsets.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                  child: Image.asset('images/cart.png'),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('V',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),),
                    Text('Cart',style: TextStyle(
                      color: Color(0xFFF8B23F),
                    fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                const SizedBox(height: 2.0),
                const Text('Block to Block',
                style: TextStyle(
                  fontSize: 22.25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF757575),
                ),),
                const SizedBox(height: 5.0),
                const Text('Floor to Floor',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFF757575),
                ),),
                const SizedBox(height: 100),
                SizedBox(
                  height: 65,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const login()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: const Color(0xFF343434), // text color
                        elevation: 2,
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14), // button's shape
                  ),
                      ),child: const Text('Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                      )),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
