import 'package:flutter/material.dart';

class ShadowImage extends StatelessWidget {
  final String image;
  const ShadowImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Center(
            child: Image.asset(
              fit: BoxFit.cover,
              image,
            ), // Replace with your image path
          ),
        ),
        Positioned(
              bottom: -10,
              right: 90,
              left: 90,
              child: MediaQuery.sizeOf(context).width >= 700
                  ? const SizedBox()
                  : Container(
                      width: 241.75,
                      height: 20,
                      decoration: ShapeDecoration(
                        color:  const Color(0xFFA9A9A9).withOpacity(.30),
                        shape: const OvalBorder(),
                      ),
                    ),
            ),
      ],
    );
  }
}
  //  SizedBox(
  //   width = 241.75,
  //   height = 40,
  //   child = Image.asset(
  //     Assets.imagesShadow,
  //     color: context.read<ThemeModeCubit>().currentTheme ==
  //             ThemeMode.dark
  //         ? Colors.transparent
  //         : null,
  //     fit: BoxFit.fill,
  //     filterQuality: FilterQuality.medium,
  //   ),
  // ),