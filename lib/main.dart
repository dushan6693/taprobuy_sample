import 'package:flutter/material.dart';
import 'package:taprobuy/color_schemes.g.dart';
import 'package:taprobuy/items/ItemCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'taprobuy Demo',
      theme: ThemeData(primaryColor: k_primary, fontFamily: 'poppins'),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List imgList = [
    'https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFpbnRpbmdzfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1579762593131-b8945254345c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBhaW50aW5nc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1613206468203-fa00870edf79?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHBhaW50aW5nc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1582561424760-0321d75e81fa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGFpbnRpbmdzfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1577720643272-265f09367456?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzF8fHBhaW50aW5nc3xlbnwwfHwwfHx8MA%3D%3D',
  ];

  List headList = [
    'Sample painting 1',
    'Sample painting 2',
    'Sample painting 3',
    'Sample painting 4',
    'Sample painting 5',
  ];
  List priceList = [
    4000,
    2500,
    12000,
    25000,
    6000,
  ];

  @override
  Widget build(BuildContext context) {
    var imgCount = imgList.length;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        // title: Text(widget.title),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.local_mall,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: k_primary,
              ),
              child: Text(
                'TaproBuy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Abot us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: GridView(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3.3),
        padding: const EdgeInsets.all(5.0),
        children: [
          for (var i = 0; i < headList.length; i++)
            ItemCard(
              image: imgList[i],
              head: headList[i],
              price: priceList[i],
            )
        ],
      ),
    );
  }
}
