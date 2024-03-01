import 'package:flutter/material.dart';
import 'package:taprobuy/items/ItemDrawer.dart';

import '../color_schemes.g.dart';
import '../items/ItemCard.dart';
import 'SignUp.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                color: k_background,
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
                color: k_background,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.local_mall,
                color: k_background,
              ))
        ],
      ),
      drawer: const ItemDrawer(),
      body: GridView(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3.7),
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
