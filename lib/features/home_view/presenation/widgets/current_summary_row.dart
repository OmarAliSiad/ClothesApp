import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../login/presenation/widgets/opcaity_text.dart';

class CustomSalesSummaryRow extends StatelessWidget {
  final String icon;
  final String title;
  final String price;
  const CustomSalesSummaryRow(
      {super.key,
      required this.icon,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            Image.asset(
              icon,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 8,
            ),
            OpcaityText(
              text: title,
              textStyle: AppStyles.styleRegular20(context)
                  .copyWith(color: Colors.black),
              opacity: .70,
            ),
            const SizedBox(
              width: 53,
            ),
            Text(
              price,
              style: AppStyles.styleBold20(context),
            ),
          ],
        );
  }
}
