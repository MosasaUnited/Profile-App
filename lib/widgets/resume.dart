import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  final String resume = 'assets/images/resume.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          resume,
          height: 500,
          width: 500,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
