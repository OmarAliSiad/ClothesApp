import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/card_shadow.dart';
import '../widgets/current_sales_summary.dart';
import '../widgets/invetory_status_details.dart';
import '../widgets/low_stack.dart';

class HomeView extends StatelessWidget {
  static String id = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1A0F91),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hello! Omar Ali ',
              style: AppStyles.styleSemiBold20(context)
                  .copyWith(color: Colors.white),
            ),
            Image.asset(
              Assets.imagesImageProfile,
              width: 31.91,
              height: 36.92,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 38),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              ZoomIn(
                duration: const Duration(milliseconds: 1100),
                child: Text(
                  'Current Sales Summary',
                  style:
                      AppStyles.styleMedium18(context).copyWith(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ZoomIn(
                duration: const Duration(milliseconds: 1100),
                child: const CardItemHomeView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, left: 8, bottom: 14),
                    child: CustomSalesSummary(),
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              ZoomIn(
                duration: const Duration(milliseconds: 1100),
                child: Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    'Inventory Status',
                    style:
                        AppStyles.styleMedium18(context).copyWith(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ZoomIn(
                duration: const Duration(milliseconds: 1100),
                child: const CardItemHomeView(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 13, left: 8, right: 20, bottom: 27),
                    child: InventoryStatusDetails(),
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              ZoomIn(
                duration: const Duration(milliseconds: 1100),
                child: const CardItemHomeView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, left: 13, bottom: 18),
                    child: LowStock(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardItemHomeView extends StatelessWidget {
  final Widget child;
  const CardItemHomeView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CardShadow(
      child: Card(
        color: Colors.white,
        child: child,
      ),
    );
  }
}
