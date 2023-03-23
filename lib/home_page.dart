import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const pi = 3.14;
    String name = "Burhanuddin Merchant";

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome !!"),
      ),
        body: Center(
          child: Container(
            child: Text("Value of pi is $pi\n My name is $name", style: TextStyle(fontSize: 20, color: Colors.red),),
          ),
        ),
      drawer: Drawer(),
    );
  }
}
