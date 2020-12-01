import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product.dart';

class ProductPage extends StatelessWidget {

  final Product product;

  ProductPage({
    @required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          product.productName,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        
      ),
      
    );
  }
}