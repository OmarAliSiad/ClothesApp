import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:lab_flutter/features/login/presenation/views/log_in.dart';
import '../../../../core/utils/app_styles.dart';

class CustomButtonPageView extends StatefulWidget {
  final int activeIndex;
  final PageController pageController;
  const CustomButtonPageView({
    super.key,
    required this.activeIndex,
    required this.pageController,
  });

  @override
  State<CustomButtonPageView> createState() => _CustomButtonPageViewState();
}

class _CustomButtonPageViewState extends State<CustomButtonPageView> {
  @override
  Widget build(BuildContext context) {
    log(widget.activeIndex.toString());
    return MaterialButton(
      elevation: 0,
      color: const Color(0xff191BA9),
      onPressed: () {
        if (widget.activeIndex != 2) {
          widget.pageController.nextPage(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
          );
        } else {
          Navigator.pushNamed(context, LogIn.id);
        }
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      minWidth: 347,
      height: 48,
      child: Text(
        widget.activeIndex == 2 ? 'Get Started' : 'Next',
        style: AppStyles.styleMedium18(context).copyWith(color: Colors.white),
      ),
    );
  }
}
