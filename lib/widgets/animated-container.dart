import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({super.key, this.height = 550});
  final double height;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.only(top: 120),
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/get-started-background.png'),
            alignment: Alignment(0.0, -0.65)),
        color: backgroundColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(200)),
      ),
      child: Image.asset(
        "assets/images/get-started-image.png",
      ),
    );
  }
}
