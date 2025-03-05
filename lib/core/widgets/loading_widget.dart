
import 'package:flutter/material.dart';
import 'package:profile_app/core/widgets/color_loader.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ColorLoader(),
    );
  }
}