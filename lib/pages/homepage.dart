// import 'dart:math';

import 'package:energytoday/pages/form.dart';
import 'package:energytoday/pages/list_tut.dart';
import 'package:flutter/material.dart';

import '../widgets/ItemList.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_off_sharp),
          ),
        ],
        title: const Text('Regain your energy'),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 245, 206, 16),
        elevation: 20.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        foregroundColor: const Color.fromARGB(255, 245, 206, 16),
        mini: true,
        child: const Icon(Icons.add_location_alt),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 250.0,
                  width: 250.0,
                  margin: const EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/fethi-bouhaouchine-MsrOiTECP7E-unsplash.jpg'),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.amberAccent, width: 7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade700,
                        offset: const Offset(6, 4),
                        blurRadius: 7,
                        spreadRadius: 5,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                  ),
                ),
                ItemList(
                  subtitle: 'Laptop Utilities',
                  title: 'Headphone',
                  onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageForm(),
                  ),
                );},
                ),
                const ItemList(
                  subtitle: 'Laptop Utilities',
                  title: 'mouse',
                  leading: Icons.mouse,
                  tileCOlor: Colors.tealAccent,
                  iconColor: Colors.blueGrey,
                ),
                const ItemList(
                  subtitle: 'Car Accesories',
                  title: 'Headrest',
                  leading: Icons.car_repair_rounded,
                  tileCOlor: Colors.yellowAccent,
                ),
                const ItemList(
                  subtitle: 'Laptop Utilities',
                  title: 'Headphone',
                  leading: Icons.headphones,
                ),
              ],
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.add_shopping_cart_outlined),
              label: const Text('Add to cart'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10.0),
                fixedSize: const Size(250, 75),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                elevation: 10.0,
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black,
                shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.black, width: 3),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        notchMargin: 2.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.yellowAccent,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.yellowAccent,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Favourite",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.yellowAccent,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
