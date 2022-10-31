import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'coffee_Tile.dart';
import 'coffee_Categ.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int index = 2;
  final List coffeeTypes = [
    [
      'LA Coffee',
      true,
    ],
    [
      'Old Coffee',
      false,
    ],
    [
      'SOM Coffee',
      false,
    ],
    [
      'MN COffee',
      false,
    ]
  ];
  void coffeeTypeIsSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeTypes.length; i++) {
        coffeeTypes[i][1] = false;
      }
      coffeeTypes[index][0] = true;
    });
  }

  final items = <Widget>[
    Icon(
      Icons.home,
      color: Colors.black,
      size: 25,
    ),
    Icon(
      Icons.favorite,
      color: Colors.black,
      size: 25,
    ),
    Icon(
      Icons.view_agenda,
      color: Colors.black,
      size: 25,
    ),
    Icon(
      Icons.exit_to_app,
      color: Colors.black,
      size: 25,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 49, 28, 28),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.orange[300],
        backgroundColor: Colors.transparent,
        color: Colors.orange,
        height: 60,
        index: index,
        items: items,
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Find Mogadishu best Coffee",
              style: GoogleFonts.bebasNeue(
                color: Colors.white,
                fontSize: 44,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  hintText: 'Type Here To Search',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeTypes.length,
              itemBuilder: (context, index) {
                return Coffee_Categry(
                    coffeeType: coffeeTypes[index][0],
                    isSelected: coffeeTypes[index][1],
                    onTop: () {
                      coffeeTypeIsSelected(index);
                    });
              },
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeImages: 'images/coffee11.jpg',
                  coffeeName: 'LA Coffee',
                  coffeepreice: '3.90',
                  coffeeSubTitle: 'BEDER HOTEL',
                ),
                CoffeeTile(
                  coffeeImages: 'images/coffee2.jpg',
                  coffeeName: 'MN Coffee',
                  coffeepreice: '7.90',
                  coffeeSubTitle: 'TAAJ HOTEL',
                ),
                CoffeeTile(
                  coffeeImages: 'images/coffee7.jpeg',
                  coffeeName: 'SOM Coffee',
                  coffeepreice: '5.99',
                  coffeeSubTitle: 'ISTANBUUL HOTEL',
                ),
                CoffeeTile(
                  coffeeImages: 'images/coffee4.jpeg',
                  coffeeName: 'LA Coffee',
                  coffeepreice: '4.80',
                  coffeeSubTitle: 'SILVER HOTEL',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
