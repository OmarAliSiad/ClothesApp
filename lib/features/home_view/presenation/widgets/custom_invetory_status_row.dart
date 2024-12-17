import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';

class InventoryStatusRow extends StatelessWidget {
  final String title;
  final String countItems;
  const InventoryStatusRow(
      {super.key, required this.title, required this.countItems});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppStyles.styleRegular20(context).copyWith(
                  color: Colors.black.withOpacity(.70)),
            ),
            Text(
              countItems,
              style: AppStyles.styleRegular20(context).copyWith(
                color: Colors.black,
              ),
            )
          ],
        );
  }
}
