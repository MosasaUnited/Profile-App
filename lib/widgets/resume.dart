import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  final String resume = 'assets/images/resume.jpg';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
        child: SizedBox(
          width: screenWidth * 0.9, // Adjust width based on screen
          child: Image.asset(
            resume,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
