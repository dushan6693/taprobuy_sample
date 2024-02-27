import 'package:flutter/material.dart';
import 'package:taprobuy/color_schemes.g.dart';

import 'Home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TaproBuy", style: TextStyle(color: k_background)),
        backgroundColor: k_primary,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: k_secondary,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          color: k_secondary,
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.black12, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: k_primary,width: 2.0),
                    ),
                    hintText: 'yourname@email.com',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Create a password",
                      style: TextStyle(
                          color: k_secondary,
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.black12, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: k_primary,width: 2.0),
                    ),
                    hintText: '*******',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: FilledButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  },
                  child: Text(
                    "Sign Up",
                  ),
                  style: FilledButton.styleFrom(
                      backgroundColor: k_primary,
                      textStyle: TextStyle(fontSize: 18.0),
                      maximumSize: Size(380.0, 60.0),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.9, 60.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(color: Colors.black54,fontSize: 15.0),),
                    TextButton(
                      onPressed: () {},
                      child: Text("Log in"),
                      style: TextButton.styleFrom( foregroundColor: Colors.black,
                          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0)),
                    )
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
