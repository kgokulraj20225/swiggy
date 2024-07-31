import 'package:flutter/material.dart';

class miui1 extends StatefulWidget {
  const miui1({super.key});

  @override
  State<miui1> createState() => _miui1State();
}

class _miui1State extends State<miui1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Payments"),
      ),
      body: Stack(children: [
        Positioned(
          left: 30,
          child: Container(
            color: Colors.white,
            child: Text(
              "Bank balance",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Positioned(
          left: 30,
          bottom: 580,
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "₹0.0",
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  "Saving account",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "State Bank of India 6829",
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
