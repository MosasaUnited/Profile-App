import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieFile extends StatelessWidget {
  const LottieFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/lottie/space_background.json',
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
