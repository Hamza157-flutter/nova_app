import 'package:flutter/material.dart';
import 'package:nova_app/core/constants/app_images.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            AppImages.backgroundGif,
          ),
        ),
        gradient: const LinearGradient(
          colors: [Colors.purple, Colors.black],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: child,
    );
  }
}
