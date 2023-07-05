import 'package:flutter/material.dart';
import 'package:flutter_gamer_ui/models/gamer_model.dart';

final accessories = [
  Accessories(
    name: 'DualSense™',
    price: 59,
    category: 'Wireless Controller',
    punctuation: 3,
    listImage: [
      ImageAccessories(image: [
        Position(position: 'assets/products/wireless/1.png'),
        Position(position: 'assets/products/wireless/positionOne/1.png'),
        Position(position: 'assets/products/wireless/positionTwo/1.png'),
      ], color: const Color.fromARGB(255, 19, 24, 32)),
      ImageAccessories(image: [
        Position(position: 'assets/products/wireless/2.png'),
        Position(position: 'assets/products/wireless/positionOne/2.png'),
        Position(position: 'assets/products/wireless/positionTwo/2.png'),
      ], color: const Color.fromARGB(255, 128, 117, 117)),
      ImageAccessories(image: [
        Position(position: 'assets/products/wireless/3.png'),
        Position(position: 'assets/products/wireless/positionOne/3.png'),
        Position(position: 'assets/products/wireless/positionTwo/3.png'),
      ], color: const Color.fromARGB(255, 177, 182, 194)),
      ImageAccessories(image: [
        Position(position: 'assets/products/wireless/4.png'),
        Position(position: 'assets/products/wireless/positionOne/4.png'),
        Position(position: 'assets/products/wireless/positionTwo/4.png'),
      ], color: const Color.fromARGB(255, 169, 29, 78)),
      ImageAccessories(image: [
        Position(position: 'assets/products/wireless/5.png'),
        Position(position: 'assets/products/wireless/positionOne/5.png'),
        Position(position: 'assets/products/wireless/positionTwo/5.png'),
      ], color: const Color.fromARGB(255, 83, 188, 245)),
      ImageAccessories(image: [
        Position(position: 'assets/products/wireless/6.png'),
        Position(position: 'assets/products/wireless/positionOne/6.png'),
        Position(position: 'assets/products/wireless/positionTwo/6.png'),
      ], color: const Color.fromARGB(255, 235, 62, 153)),
      ImageAccessories(image: [
        Position(position: 'assets/products/wireless/7.png'),
        Position(position: 'assets/products/wireless/positionOne/7.png'),
        Position(position: 'assets/products/wireless/positionTwo/7.png'),
      ], color: const Color.fromARGB(255, 71, 45, 150)),
      ImageAccessories(image: [
        Position(position: 'assets/products/wireless/8.png'),
        Position(position: 'assets/products/wireless/positionOne/8.png'),
        Position(position: 'assets/products/wireless/positionTwo/8.png'),
      ], color: const Color.fromARGB(255, 33, 48, 105)),
    ],
  ),
  Accessories(
    name: 'PlayStation5™',
    price: 250,
    category: 'Console Covers',
    punctuation: 4,
    listImage: [
      ImageAccessories(
        image: [
          Position(position: 'assets/products/console/1.png'),
          Position(position: 'assets/products/console/positionOne/1.png'),
          Position(position: 'assets/products/console/positionTwo/1.png'),
        ],
        color: const Color.fromARGB(255, 19, 24, 32),
      ),
      ImageAccessories(
        image: [
          Position(position: 'assets/products/console/2.png'),
          Position(position: 'assets/products/console/positionOne/2.png'),
          Position(position: 'assets/products/console/positionTwo/2.png'),
        ],
        color: const Color.fromARGB(255, 128, 117, 117),
      ),
      ImageAccessories(
        image: [
          Position(position: 'assets/products/console/3.png'),
          Position(position: 'assets/products/console/positionOne/3.png'),
          Position(position: 'assets/products/console/positionTwo/3.png'),
        ],
        color: const Color.fromARGB(255, 2, 6, 50),
      ),
      ImageAccessories(
        image: [
          Position(position: 'assets/products/console/4.png'),
          Position(position: 'assets/products/console/positionOne/4.png'),
          Position(position: 'assets/products/console/positionTwo/4.png'),
        ],
        color: const Color.fromARGB(255, 169, 29, 78),
      ),
      ImageAccessories(
        image: [
          Position(position: 'assets/products/console/5.png'),
          Position(position: 'assets/products/console/positionOne/5.png'),
          Position(position: 'assets/products/console/positionTwo/5.png'),
        ],
        color: const Color.fromARGB(255, 83, 188, 245),
      ),
      ImageAccessories(
        image: [
          Position(position: 'assets/products/console/6.png'),
          Position(position: 'assets/products/console/positionOne/6.png'),
          Position(position: 'assets/products/console/positionTwo/6.png'),
        ],
        color: const Color.fromARGB(255, 235, 62, 153),
      ),
      ImageAccessories(
        image: [
          Position(position: 'assets/products/console/7.png'),
          Position(position: 'assets/products/console/positionOne/7.png'),
          Position(position: 'assets/products/console/positionTwo/7.png'),
        ],
        color: const Color.fromARGB(255, 71, 45, 150),
      ),
    ],
  ),
  Accessories(
    name: 'PULSE 3D™',
    price: 55,
    category: 'Wireless Headset',
    punctuation: 3,
    listImage: [
      ImageAccessories(
        image: [
          Position(position: 'assets/products/headset/1.png'),
          Position(position: 'assets/products/headset/positionOne/1.png'),
          Position(position: 'assets/products/headset/positionTwo/1.png')
        ],
        color: const Color.fromARGB(255, 19, 24, 32),
      ),
      ImageAccessories(
        image: [
          Position(position: 'assets/products/headset/2.png'),
          Position(position: 'assets/products/headset/positionOne/2.png'),
          Position(position: 'assets/products/headset/positionTwo/2.png')
        ],
        color: const Color.fromARGB(255, 128, 117, 117),
      ),
      ImageAccessories(
        image: [
          Position(position: 'assets/products/headset/3.png'),
          Position(position: 'assets/products/headset/positionOne/3.png'),
          Position(position: 'assets/products/headset/positionTwo/3.png')
        ],
        color: const Color.fromARGB(255, 177, 182, 194),
      ),
    ],
  ),
];
