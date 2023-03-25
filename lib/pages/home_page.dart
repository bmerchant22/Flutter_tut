import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Welcome !!")),
      ),
        body: ListView.builder(
          itemCount: dummyList.length,
            itemBuilder: (context, index) {
          return ItemWidget(
              item: dummyList[index]
          );
        }),
      drawer: MyDrawer(),
    );
  }
}
