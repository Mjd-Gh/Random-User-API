import 'package:flutter/material.dart';

class UColor {
  static const darkGrey = Color.fromARGB(255, 79, 77, 77);
  static const mint = Color.fromARGB(255, 149, 219, 191);
  static const darkMint = Color.fromARGB(255, 131, 217, 183);
  static const lightMint = Color.fromARGB(255, 189, 242, 221);
  static const lime = Color.fromARGB(255, 247, 245, 179);

  static LinearGradient greyGrad = const LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color.fromARGB(255, 96, 93, 93),
      darkGrey,
      Color.fromARGB(255, 62, 61, 61),
    ],
  );

  static const mintLim = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromARGB(255, 248, 246, 196),
      Color.fromARGB(255, 203, 246, 229),
    ],
  );

  static const whiteLime = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromARGB(255, 203, 246, 229),
      Color.fromARGB(255, 247, 247, 247),
    ],
  );

  static const whitMint = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromARGB(255, 203, 246, 229),
      Colors.white,
      Colors.white,
      Color.fromARGB(255, 248, 246, 196),
    ],
  );
}
