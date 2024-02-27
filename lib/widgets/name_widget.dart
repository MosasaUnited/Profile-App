import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      child: const Text(
        'Mostafa Mahmoud Saad',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20),
      ),
    );
  }
}
