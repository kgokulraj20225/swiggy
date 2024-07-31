import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy/miui.dart';

Widget text(String text1, Color c, double f, FontWeight w) {
  return Container(
    child: Text(
      text1,
      style: TextStyle(color: c, fontSize: f, fontWeight: w),
    ),
  );
}

Widget size(double heiht, double widdth) {
  return SizedBox(
    height: heiht,
    width: widdth,
  );
}

class tin extends StatefulWidget {
  const tin({super.key});

  @override
  State<tin> createState() => _tinState();
}

class _tinState extends State<tin> {
  Widget start(String img, String tx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            fit: BoxFit.fill,
            width: 365,
            height: 500,
            alignment: Alignment.topCenter,
            image: NetworkImage(
              img,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          tx,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        size(0, 3),
                        start(
                            "https://t3.ftcdn.net/jpg/03/13/00/70/240_F_313007059_Lbgy6IGzphFh9xFpNOMSa8AaEdg89yVL.jpg",
                            "\t \tDelicious And Easy \n Food To Make For You"),
                        size(0, 8),
                        start(
                            "https://t3.ftcdn.net/jpg/03/13/00/70/240_F_313007059_Lbgy6IGzphFh9xFpNOMSa8AaEdg89yVL.jpg",
                            "\t \tDelicious And Easy \n Food To Make For You"),
                        size(0, 8),
                        start(
                            "https://t3.ftcdn.net/jpg/03/13/00/70/240_F_313007059_Lbgy6IGzphFh9xFpNOMSa8AaEdg89yVL.jpg",
                            "\t \tDelicious And Easy \n Food To Make For You"),
                      ],
                    ),
                  ),
                  size(130, 0),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tin2()));
                      },
                      child: Container(
                        width: 280,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_circle_right,
                              color: Colors.white,
                              size: 35,
                            ),
                            size(0, 10),
                            text("Get Started", Colors.white, 20,
                                FontWeight.bold)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class tin2 extends StatefulWidget {
  const tin2({super.key});

  @override
  State<tin2> createState() => _tin2State();
}

class _tin2State extends State<tin2> {
  Widget menu(String img, String txt, String txt1, String txt2, String txt3) {
    return Container(
      width: 350,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 7,
                spreadRadius: 3,
                offset: Offset(0, 3))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(img),
            radius: 35,
          ),
          size(0, 20),
          Container(
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  txt,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  txt1,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Text(
                  txt2,
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          size(0, 20),
          Row(
            children: [
              Icon(
                Icons.add_box,
                color: Colors.orange,
              ),
              size(0, 9),
              Text(txt3),
              size(0, 9),
              Icon(
                Icons.add_box,
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget b(String t, String t1, Color c, double n) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          t,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
        SizedBox(
          width: n,
        ),
        Text(
          t1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: c),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                  child:
                      text("Order Detail", Colors.black, 30, FontWeight.bold)),
              size(20, 0),
              menu(
                  "https://t3.ftcdn.net/jpg/00/27/57/96/240_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg",
                  "Melting Cheese Pizza",
                  "Pizza",
                  "\$9.65",
                  "1"),
              size(35, 0),
              menu(
                  "https://t3.ftcdn.net/jpg/00/27/57/96/240_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg",
                  "Melting Cheese Pizza",
                  "Pizza",
                  "\$9.65",
                  "3"),
              size(35, 0),
              menu(
                  "https://t3.ftcdn.net/jpg/00/27/57/96/240_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg",
                  "Melting Cheese Pizza",
                  "Pizza",
                  "\$9.65",
                  "5"),
              size(35, 0),
              menu(
                  "https://t3.ftcdn.net/jpg/00/27/57/96/240_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg",
                  "Melting Cheese Pizza",
                  "Pizza",
                  "\$9.65",
                  "10"),
              size(35, 0),
              menu(
                  "https://t3.ftcdn.net/jpg/00/27/57/96/240_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg",
                  "Melting Cheese Pizza",
                  "Pizza",
                  "\$9.65",
                  "2"),
              size(35, 0),
              b("Price", "\$84.50", Colors.black, 200),
              b("debt", "\$2", Colors.black, 260),
              b("total", "\$48.50", Colors.orange, 200),
              size(20, 0),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => miui1()));
                },
                child: Container(
                  width: 280,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text("Pay The Fee", Colors.white, 20, FontWeight.bold)
                    ],
                  ),
                ),
              ),
              size(20, 0),
            ],
          ),
        ],
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}

// class tin2 extends StatefulWidget {
//   const tin2({super.key});
//
//   @override
//   State<tin2> createState() => _tin2State();
// }
//
// class _tin2State extends State<tin2> {
//   @override
//
//   // Example data
//   final List<Map<String, String>> items = [
//     {
//       'title': 'Melting Cheese Pizza',
//       'subtitle': 'Pizza ',
//       'subtitle': '\$ 2.85'
//     },
//     {'title': 'Item 2', 'subtitle': 'Subtitle 2'},
//     {'title': 'Item 3', 'subtitle': 'Subtitle 3'},
//   ];
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           final item = items[index];
//           return createCard(item['title']!, item['subtitle']!);
//         },
//       ),
//     );
//   }
//
//   // Function to create a Card widget
//   Widget createCard(String title, String subtitle) {
//     return Card(
//       margin: EdgeInsets.all(10.0),
//       child: ListTile(
//         title: Text(title),
//         subtitle: Text(subtitle),
//         leading: CircleAvatar(
//           backgroundImage: NetworkImage(
//               "https://t3.ftcdn.net/jpg/00/27/57/96/240_F_27579652_tM7V4fZBBw8RLmZo0Bi8WhtO2EosTRFD.jpg"),
//         ),
//         trailing: Icon(Icons.arrow_forward),
//       ),
//     );
//   }
// }
