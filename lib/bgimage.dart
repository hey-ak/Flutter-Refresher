import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
                "assets/login.jpg",
                fit: BoxFit.cover,
              );
  }
}