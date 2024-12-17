import 'package:flutter/material.dart';
import 'package:lab_flutter/core/utils/assets.dart';

class CustomSlidingAnimation extends StatelessWidget {
  final Animation<double> slidingAnimtaion;
  const CustomSlidingAnimation({
    super.key,
    required this.slidingAnimtaion,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimtaion,
      builder: (context, child) {
        return FadeTransition(
          opacity: slidingAnimtaion,
          child: Image.asset(
            Assets.imagesLogo,
            color: Colors.white,
            width: 121,
            height: 107,
          ),
        );
      },
    );
  }
}
