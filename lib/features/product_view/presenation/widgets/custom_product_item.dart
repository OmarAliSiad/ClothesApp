import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/models/card_item_model.dart';
import '../../../../core/utils/app_styles.dart';

class CustomProductItem extends StatelessWidget {
  final CardItemModel cardItemModel;
  final int index;
  const CustomProductItem({
    super.key,
    required this.cardItemModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      duration: const Duration(seconds: 1),
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 12,
                offset: const Offset(0, 6),
                color: Colors.black.withOpacity(0.13),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              Center(
                child: Image.asset(
                  cardItemModel.image,
                  width: 65,
                  height: 96,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  cardItemModel.title,
                  style:
                      AppStyles.styleSemiBold14(context).copyWith(fontSize: 12),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: Text(
                      cardItemModel.subtitle,
                      style: AppStyles.styleRegular11(context),
                    ),
                  )),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      '${cardItemModel.price.toString()} EGP',
                      style: AppStyles.styleBold14(context).copyWith(
                        fontFamily: GoogleFonts.lato().fontFamily,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
