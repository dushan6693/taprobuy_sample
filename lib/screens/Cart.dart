import 'package:flutter/material.dart';

import '../color_schemes.g.dart';
import '../items/ItemCart.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List imgList = [
    'https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFpbnRpbmdzfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1579762593131-b8945254345c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBhaW50aW5nc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1613206468203-fa00870edf79?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHBhaW50aW5nc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1582561424760-0321d75e81fa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGFpbnRpbmdzfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1577720643272-265f09367456?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzF8fHBhaW50aW5nc3xlbnwwfHwwfHx8MA%3D%3D',
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
    'Sample painting 6',
    'Sample painting 7',
    'Sample painting 8',
    'Sample painting 9',
    'Sample painting 10',
  ];
  List priceList = [
    4000,
    2500,
    2500,
    12000,
    12000,
    12000,
    25000,
    2500,
    12000,
    6000,
  ];

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

        ],
      ),
      body: Column(
        children: [
          const Text("CART",style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
          Expanded(
            child: GridView(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 5 / 2.5),
              padding: const EdgeInsets.all(5.0),
              children: [
                for (var i = 0; i < headList.length; i++)
                  ItemCart(
                    image: imgList[i],
                    head: headList[i],
                    price: priceList[i],
                  )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FilledButton(
              onPressed: () {

              },
              style: FilledButton.styleFrom(
                  backgroundColor: k_primary,
                  textStyle: const TextStyle(fontSize: 18.0),
                  minimumSize:
                  Size(MediaQuery.of(context).size.width * 0.7, 50.0)),
              child: const Text(
                "Proceed To Checkout",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
