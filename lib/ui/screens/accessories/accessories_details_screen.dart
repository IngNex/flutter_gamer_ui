import 'package:flutter/material.dart';

import 'package:flutter_gamer_ui/models/gamer_model.dart';

class AccessoriesDetailsScreen extends StatefulWidget {
  const AccessoriesDetailsScreen({
    Key? key,
    required this.product,
    required this.tag,
  }) : super(key: key);
  final Accessories product;
  final int tag;
  @override
  State<AccessoriesDetailsScreen> createState() =>
      _AccessoriesDetailsScreenState();
}

class _AccessoriesDetailsScreenState extends State<AccessoriesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Hero(
            tag: widget.tag,
            child: Image(image: AssetImage(widget.product.listImage[0].image))),
      ),
    );
  }
}
