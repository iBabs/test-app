import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> days = ["Mon", "Tue", "Wed", "Thur", "Fri"];

  final List<String> exercise = [
    "Jug",
    "Push ups",
    "Sit ups",
    "Skipping",
    "Jumping jack"
  ];

  final List<double> hours = [2.0, 2.30, 1.00, 2.30, 4.00];
  bool likedList = true;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountEmail: Text('Example@email.com'),
              accountName: Text("Example Name"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(
                    'images/christian-dubovan-gxsRL8B_ZqE-unsplash.jpg'),
                    
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage:
                      AssetImage('images/jan-kopriva-JCcz54otNhU-unsplash.jpg'),
                ),
                CircleAvatar(
                  foregroundImage: AssetImage(
                      'images/fethi-bouhaouchine-MsrOiTECP7E-unsplash.jpg'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.shop_rounded),
              title: Text('Shops'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.add_moderator_rounded),
              title: Text('Connect'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.collections),
              title: Text('Collections'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('List Test'),
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.ac_unit_rounded,
                    size: 35.0,
                  ),
                  Text("Snow")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.energy_savings_leaf,
                    size: 35.0,
                  ),
                  Text("Herbs")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share_location,
                    size: 35.0,
                  ),
                  Text("Location")
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: days.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: CircleAvatar(
                      child: Text(days[index][0]),
                    ),
                    title: Text(
                      days[index],
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    subtitle: Text(exercise[index]),
                    trailing: likedList
                        ? Text("${hours[index]} hour(s)")
                        : const Icon(Icons.favorite, color: Colors.red),
                    onTap: () {
                      setState(() {
                        likedList = !likedList;
                      });
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
