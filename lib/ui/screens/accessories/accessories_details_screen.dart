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
  int valueController = 0;
  int valuePosition = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //========  Circle Container =========
          Positioned(
            top: -size.height * 0.20,
            left: -size.height * 0.25,
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 650),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, value, _) {
                return AnimatedContainer(
                  height: value * size.height * 0.5,
                  width: value * size.height * 0.5,
                  duration: const Duration(milliseconds: 400),
                  decoration: BoxDecoration(
                    color: widget.product.listImage[valueController].color,
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: -size.height * 0.20,
            right: -size.height * 0.25,
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 650),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, value, _) {
                return AnimatedContainer(
                  height: value * size.height * 0.5,
                  width: value * size.height * 0.5,
                  duration: const Duration(milliseconds: 400),
                  decoration: BoxDecoration(
                    color: widget.product.listImage[valueController].color,
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
          ),
          //========  Buttons =========
          Positioned(
            top: kToolbarHeight,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: widget.product.listImage[valueController].color,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor:
                      widget.product.listImage[valueController].color,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //========  FittedBox =========
          Positioned(
            top: size.height * 0.18,
            right: 5,
            left: 5,
            child: const FittedBox(
                child: Text(
              'Wireless\nController',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            )),
          ),
          //========  Image =========
          AnimatedPositioned(
            top: size.height * 0.20,
            right: size.height * 0.05,
            left: size.height * 0.05,
            duration: const Duration(milliseconds: 250),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              child: Hero(
                tag: widget.tag,
                child: Image(
                  image: AssetImage(widget.product.listImage[valueController]
                      .image[valuePosition].position),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.category,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.product.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                widget.product.listImage[valueController].color,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 2,
                              color: widget
                                  .product.listImage[valueController].color)),
                      child: const Text('BUY'),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.product.price}0',
                      style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: widget.product.punctuation > index
                              ? widget.product.listImage[valueController].color
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Position',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: List.generate(
                        widget.product.listImage[valueController].image.length,
                        (index) => GestureDetector(
                          onTap: () {
                            valuePosition = index;
                            setState(() {});
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: index == valuePosition
                                  ? Border.all(
                                      width: 2,
                                      color: const Color.fromARGB(
                                          255, 239, 236, 236))
                                  : Border.all(width: 1, color: Colors.grey),
                            ),
                            child: Image(
                              image: AssetImage(
                                widget.product.listImage[valueController]
                                    .image[index].position,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Color',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: List.generate(
                        widget.product.listImage.length,
                        (index) => GestureDetector(
                          onTap: () {
                            valueController = index;
                            setState(() {});
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              border: index == valueController
                                  ? Border.all(
                                      width: 2,
                                      color: const Color.fromARGB(
                                          255, 239, 236, 236))
                                  : Border.all(width: 1, color: Colors.grey),
                              shape: BoxShape.circle,
                              color: widget.product.listImage[index].color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
