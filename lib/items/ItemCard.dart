import 'package:flutter/material.dart';
import 'package:taprobuy/color_schemes.g.dart';
import 'package:taprobuy/items/Styles.dart';
import 'package:taprobuy/screens/BuyNow.dart';

// list of images

class ItemCard extends StatelessWidget {
  final String image;
  final String head;
  final int price;

  const ItemCard(
      {super.key,
      required this.image,
      required this.head,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                image,
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.45,
                scale: 1,
                fit: BoxFit.cover,
              )),
          Container(
            margin: const EdgeInsets.all(3.0),
            child: Text(
              head,
              style: k_txtHeading,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(3.0),
            child: Text(
              "Rs $price.00",
              style: k_txtPrice,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: FilledButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return const BuyNow();
                    }));
              },
              style: FilledButton.styleFrom(
                backgroundColor: k_primary,
                textStyle: k_txtButton,
                minimumSize:
                    Size(MediaQuery.of(context).size.width * 0.4, 45.0),
              ),
              child: const Text(
                "Buy now",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: k_primary_variant,
                  foregroundColor: k_primary,
                  textStyle: k_txtButton,
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.4, 45.0)),
              onPressed: () {},
              child: const Text("Add to cart"),
            ),
          )
        ],
      ),
    );
  }
}
