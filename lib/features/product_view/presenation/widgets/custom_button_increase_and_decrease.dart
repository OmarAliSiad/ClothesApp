
import 'package:flutter/material.dart';

class ButtonIncreaseAndDecrease extends StatelessWidget {
  final Color iconColor;
  final Color bottomColor;
  final IconData icon;
  const ButtonIncreaseAndDecrease({
    super.key,
    required this.iconColor,
    required this.bottomColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 14,
            bottom: 15,
            left: 14,
            right: 15,
          ),
          decoration: BoxDecoration(
            color: bottomColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            icon,
            color: iconColor,
          ),
        )
      ],
    );
  }
}
