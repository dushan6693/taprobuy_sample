import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color_schemes.g.dart';

class ItemDrawer extends StatefulWidget {
  const ItemDrawer({super.key});

  @override
  State<ItemDrawer> createState() => _ItemDrawerState();
}

class _ItemDrawerState extends State<ItemDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Orders'),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return SignUp();
              // }));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Email notification'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Shipping address'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Password'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
