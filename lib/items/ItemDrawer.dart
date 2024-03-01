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
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return SignUp();
              // }));
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
    );
  }
}
