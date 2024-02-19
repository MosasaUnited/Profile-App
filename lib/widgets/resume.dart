import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  final String resume = 'assets/images/resume.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Image.asset(
          resume,
          height: 850,
          width: 600,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
