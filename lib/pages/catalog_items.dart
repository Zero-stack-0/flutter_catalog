import 'package:flutter/material.dart';
import '../models/catalogProduct.dart';

class CatalogItems extends StatelessWidget {
  final CatalogProduct catalogProduct;

  const CatalogItems({super.key, required this.catalogProduct});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(catalogProduct.ImageUrl),
        title: Text(catalogProduct.Name),
        subtitle: Text(catalogProduct.Description),
        trailing: Text(
          "\$${catalogProduct.Price.toString()}",
          style: const TextStyle(
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}
