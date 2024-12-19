import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lab_flutter/features/pageView/presentation/widgets/custom_button.dart';
import 'package:lab_flutter/features/pageView/presentation/widgets/dots_indicator.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_bottom_container.dart';

class CustomPageScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final double widthImage;
  final int activeIndex;
  final PageController pageController;

  const CustomPageScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.widthImage,
    required this.activeIndex,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 164,
        ),
        FadeInRight(
          duration: const Duration(seconds: 1),
          child: Container(
            width: widthImage,
            height: 256,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                image: AssetImage(image),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        DotsIndicator(
          activeIndex: activeIndex,
          color: const Color(0xff191BA9),
        ),
        const SizedBox(
          height: 20,
        ),
        FadeInLeft(
          duration: const Duration(seconds: 1),
          child: Text(
            title,
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        FadeInRight(
          duration: const Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: Text(
              subtitle,
              style: AppStyles.styleLight14(context).copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        ZoomIn(
          duration: const Duration(milliseconds: 1300),
          child: Center(
            child: CustomButtonPageView(
              pageController: pageController,
              activeIndex: activeIndex,
            ),
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        const CustomBottomContainer(
          color: Colors.black,
        )
      ],
    );
  }
}
