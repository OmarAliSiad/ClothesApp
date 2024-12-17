import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import 'low_stock_row.dart';

class LowStock extends StatelessWidget {
  const LowStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Low Stock',
          style: AppStyles.styleRegular20(context),
        ),
        const LowStockRow(
          title: 'Sold',
          countItems: '5 items left',
          widthBetweentitleAndCountItems: 57,
          image: Assets.imagesWarnRed,
          widthBetweencountItemsAndImage: 5,
        ),
        const LowStockRow(
          title: 'UnSold',
          countItems: '20 items',
          widthBetweentitleAndCountItems: 67,
          image: Assets.imagesWarnYellow,
          widthBetweencountItemsAndImage: 30,
          imageHeight: 32,
          imageWidth: 32,
        )
      ],
    );
  }
}
