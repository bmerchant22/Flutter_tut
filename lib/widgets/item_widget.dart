import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {

  final Item item;

  ItemWidget({super.key, required this.item}) {}

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 1,
      margin: EdgeInsets.all(12),
      child: ListTile(
        onTap: () {
          print("Iphone pro chosen");
        },
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
            "${item.price.toString()}\$",
          style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
