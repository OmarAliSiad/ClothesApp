import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../widgets/custom_page_screen.dart';

class PagesScreen extends StatefulWidget {
  static String id = 'PagesScreen';
  const PagesScreen({super.key});
  @override
  State<PagesScreen> createState() => _PagesScreenState();
}

class _PagesScreenState extends State<PagesScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (page) {
          setState(
            () {
              currentIndex = page.round();
            },
          );
        },
        controller: pageController,
        children: [
          CustomPageScreen(
            pageController: pageController,
            activeIndex: currentIndex == 0 ? 0 : currentIndex,
            image: Assets.imagesIllustrationOnboarding1,
            widthImage: 344.03,
            title: 'Welcome to Fashion Hub',
            subtitle:
                'Explore a vast collection of trendy clothing styles and find the perfect outfit that reflects your personality. Shop from the comfort of your home and elevate your wardrobe effortlessly.',
          ),
          CustomPageScreen(
            pageController: pageController,
            activeIndex: currentIndex == 1 ? 1 : currentIndex,
            image: Assets.imagesIllustrationOnboarding2,
            widthImage: 255.68,
            title: 'Shop with Ease',
            subtitle:
                'Discover the latest fashion pieces that suit your style and budget. With secure payment options and quick delivery, refreshing your closet has never been this simple.',
          ),
          CustomPageScreen(
            pageController: pageController,
            activeIndex: currentIndex == 2 ? 2 : currentIndex,
            image: Assets.imagesIllustrationOnboarding3,
            widthImage: 258.71,
            title: 'Unmatched Shopping Experience',
            subtitle:
                'Dive into a world of fashion and enjoy a seamless online shopping experience. Start your journey now and redefine your style with just a few clicks.',
          ),
        ],
      ),
    );
  }
}
