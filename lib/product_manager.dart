import 'package:flutter/material.dart';
// import 'package:real_app/product_control.dart';
import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductManager(this.products);

  @override
  Widget build(BuildContext context) {
    print('[ProductsManager State] build()');
    return Column(
      children: <Widget>[
        Expanded(
          child: Products(products),
        )
      ],
    );
  }
}
