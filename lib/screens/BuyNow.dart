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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30.0),
          child: Column(
        
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
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
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  "SHIPPING ADDRESS",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Text("91/A\nChurch Road,\nGampaha\n11000",style: TextStyle(
                  fontSize: 15.0,
        
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.0),
                child: Text(
                  "SHIPPING METHOD",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0,),
                width: MediaQuery.of(context).size.width*0.9,
                padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 4.0,bottom: 4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12,width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
        
                child: DropdownButton<String>(
        
                  value: shipValue,
                  icon: Icon(Icons.keyboard_arrow_down),
        
                  isExpanded: true,
                  iconSize: 30,
                  elevation: 16,
                  style: TextStyle(color: Colors.black,fontSize: 18.0), // Text color
        
        
                  items: ship_method.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(), onChanged: (String? value) {
                  setState(() {
                    shipValue = value!;
                  });
                },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.0),
                child: Text(
                  "PAYMENT METHOD",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                width: MediaQuery.of(context).size.width*0.9,
                padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 4.0,bottom: 4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12,width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
        
                child: DropdownButton<String>(
        
                  value: payValue,
                  icon: Icon(Icons.keyboard_arrow_down),
        
                  isExpanded: true,
                  iconSize: 30,
                  elevation: 16,
                  style: TextStyle(color: Colors.black,fontSize: 18.0), // Text color
        
        
                  items: pay_method.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(), onChanged: (String? value) {
                  setState(() {
                    payValue = value!;
                  });
                },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container( margin:EdgeInsets.only(top: 20.0),child: Text("EST.TOTAL" ,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
                  Container(margin:EdgeInsets.only(top: 20.0),child: Text("Rs. ${6000.00.toStringAsFixed(2)}",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.red),)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: FilledButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //       return Home();
                    //     }));
                  },
                  child: Text(
                    "Place Order",
                  ),
                  style: FilledButton.styleFrom(
                      backgroundColor: k_primary,
                      textStyle: TextStyle(fontSize: 18.0),
                      minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.9, 60.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
