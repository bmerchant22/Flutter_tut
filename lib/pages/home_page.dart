import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Welcome !!")),
      ),
        body: Center(
          child: Container(
            child: Text("My first flutter app", style: TextStyle(fontSize: 20, color: Colors.red),),
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}
