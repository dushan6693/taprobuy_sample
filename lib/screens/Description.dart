import 'package:flutter/material.dart';
import 'package:taprobuy/color_schemes.g.dart';

class Description extends StatefulWidget {
  final String imgLink;
  final String heading;
  final int price;

  const Description(
      {super.key,
      required this.imgLink,
      required this.heading,
      required this.price});

  @override
  State<Description> createState() =>
      DescriptionState(imgLink: imgLink, heading: heading, price: price);
}

class DescriptionState extends State<Description> {
  final String imgLink;
  final String heading;
  final int price;

  DescriptionState(
      {required this.imgLink, required this.heading, required this.price});

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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imgLink,
                width: MediaQuery.of(context).size.width * 1.0,
              ),
              Container(
                margin: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text(
                      heading,
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    )),
                    Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Text(
                          "By Nipun jayawardhena",
                          style: TextStyle(
                              fontSize: 18.0, color: Colors.black87),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Rs. $price.00",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold,color: k_primary),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Description of product",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "This is a sample description about this pcture.This is a sample description about this pcture.This is a sample description about this pcture.This is a sample description about this pcture.",
                          style: TextStyle(
                              fontSize: 18.0,color: Colors.black87),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
