import 'package:flutter/material.dart';
import 'package:real_app/product_control.dart';
import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    print('[ProductsManager State] build()');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addProduct),
        ),
        Expanded(
          child: Products(products, deleteProduct: deleteProduct),
        )
      ],
    );
  }
}
