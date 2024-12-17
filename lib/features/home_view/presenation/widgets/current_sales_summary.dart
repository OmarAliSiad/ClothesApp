import 'package:flutter/material.dart';
import 'package:lab_flutter/features/home_view/presenation/widgets/current_summary_row.dart';
import '../../../../core/utils/assets.dart';

class CustomSalesSummary extends StatelessWidget {
  const CustomSalesSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSalesSummaryRow(
          icon: Assets.imagesTotalSales,
          title: 'Total Sales',
          price: r'$250.00',
        ),
        CustomSalesSummaryRow(
          icon: Assets.imagesTransactions,
          title: 'Transactions',
          price: '35',
        )
      ],
    );
  }
}
