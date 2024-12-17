import 'package:flutter/material.dart';

class CardShadow extends StatelessWidget {
  final Widget child;
  const CardShadow({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
      child: child,
    );
  }
}
