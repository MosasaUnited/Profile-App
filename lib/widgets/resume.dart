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
          child: InteractiveViewer(
            minScale: 0.5, // Set minimum zoom level (optional)
            maxScale: 2.0, // Set maximum zoom level (optional)
            boundaryMargin: EdgeInsets.zero,
            child: Image.asset(
              resume,
              fit: BoxFit.cover,
            ), // Remove padding around image (optional)
          ),
        ),
      ),
    );
  }
}
