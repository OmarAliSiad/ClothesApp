import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';

class LowStockRow extends StatelessWidget {
  final String title;
  final String countItems;
  final String image;
  final double widthBetweentitleAndCountItems;
  final double widthBetweencountItemsAndImage;
  final double? imageWidth;
  final double? imageHeight;

  const LowStockRow({
    super.key,
    required this.title,
    required this.countItems,
    required this.image,
    required this.widthBetweentitleAndCountItems,
    required this.widthBetweencountItemsAndImage,
    this.imageWidth,
    this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Text(
              title,
              style: AppStyles.styleRegular20(context).copyWith(
                color:  Colors.black.withOpacity(.70),
              ),
            ),
            SizedBox(
              width: widthBetweentitleAndCountItems,
            ),
            Text(
              countItems,
              style: AppStyles.styleRegular20(context).copyWith(
                  color: Colors.black),
            ),
            SizedBox(
              width: widthBetweencountItemsAndImage,
            ),
            Image.asset(
              image,
              width: imageWidth ?? 24,
              height: imageHeight ?? 24,
            )
          ],
        );
  }
}
