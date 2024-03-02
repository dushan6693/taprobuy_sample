import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatefulWidget {
  final String image;
  final String head;
  final int price;

  const ItemCart(
      {super.key,
      required this.image,
      required this.head,
      required this.price});

  @override
  State<ItemCart> createState() =>
      _ItemCartState(image: image, head: head, price: price);
}

class _ItemCartState extends State<ItemCart> {
  final String image;
  final String head;
  final int price;
  int count = 1;

  _ItemCartState(
      {required this.image, required this.head, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Row(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 1.0,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ))),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$head",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (count < 2) {
                                  count=1;
                                } else {
                                  count--;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.remove,
                              size: 18.0,
                              weight: 100.0,
                            ),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.black12),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "$count",
                              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              size: 18.0,
                              weight: 100.0,
                            ),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.black12),
                          ),
                        ],
                      ),
                      Text("$price.00",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.red),),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
