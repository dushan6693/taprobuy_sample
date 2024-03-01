import 'package:flutter/material.dart';
import 'package:taprobuy/items/ItemDrawer.dart';

import '../color_schemes.g.dart';

class BuyNow extends StatefulWidget {
  const BuyNow({super.key});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {

  static const List<String> ship_method = <String>['Pickup at store', 'option2', 'option3',];
  static const List<String> pay_method = <String>['Select payment method', 'option2', 'option3',];
  String shipValue = ship_method.first;
  String payValue = pay_method.first;
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
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CHECKOUT",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Text(
              "SHIPPING ADDRESS",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("91/A\nChurch Road,\nGampaha\n11000",style: TextStyle(
                fontSize: 15.0,

              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "SHIPPING METHOD",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
              child: DropdownMenu<String>(
                initialSelection: ship_method.first,
                
                onSelected: (String? value) {
              
                  setState(() {
                    shipValue = value!;
                  });
                },
                dropdownMenuEntries: ship_method.map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
                }).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "PAYMENT METHOD",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
