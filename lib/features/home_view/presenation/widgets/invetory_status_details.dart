import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';
import 'custom_invetory_status_row.dart';

class InventoryStatusDetails extends StatelessWidget {
  const InventoryStatusDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Product categories',
          style: AppStyles.styleRegular20(context),
        ),
        const InventoryStatusRow(title: 'Products', countItems: '45 items'),
        const InventoryStatusRow(title: 'Services', countItems: '20 items')
      ],
    );
  }
}
