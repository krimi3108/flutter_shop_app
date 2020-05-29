import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product-detail";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<Products>(context, listen: false).getProductby(id: productId);

    return Scaffold(
        appBar: AppBar(
      title: Text(product.title),
    ));
  }
}
