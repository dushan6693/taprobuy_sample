import 'package:flutter/material.dart';
import 'package:taprobuy/items/ItemDrawer.dart';

import '../color_schemes.g.dart';

class BuyNow extends StatefulWidget {
  const BuyNow({super.key});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {

  @override
  Widget build(BuildContext context) {

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
      body: Center(child: Text("hey"),)
    );
  }
}
