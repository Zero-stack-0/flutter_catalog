// ignore_for_file: prefer_const_constructors, dead_code
import 'package:flutter/material.dart';
import 'package:flutter_demo/models/catalogProduct.dart';
import 'package:flutter_demo/pages/catalog_items.dart';
import 'package:flutter_demo/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList =
        List.generate(15, ((index) => CatalogItemsModel.products[0]));
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Catalog App",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return CatalogItems(catalogProduct: dummyList[index]);
            },
          ),
        ));
  }
}
