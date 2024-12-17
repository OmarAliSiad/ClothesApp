import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../../core/models/card_item_model.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_bottom_container.dart';
import '../widgets/shadow_image.dart';

class ProductDetailsView extends StatefulWidget {
  static String id = 'ProductDetails';
  CardItemModel? cardItemModel;
  ProductDetailsView({super.key, this.cardItemModel});
  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  int quantity = 1;
  late int index;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        forceMaterialTransparency: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 19,
            ),
            ZoomIn(
              duration: const Duration(milliseconds: 1200),
              child: ShadowImage(
                image: widget.cardItemModel!.image,
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ZoomIn(
                    duration: const Duration(milliseconds: 1200),
                    child: Text(
                      '${widget.cardItemModel!.title}',
                      style: AppStyles.styleMedium18(context)
                          .copyWith(fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ZoomIn(
                    duration: const Duration(milliseconds: 1200),
                    child: Text(
                      "\$${widget.cardItemModel!.price}00".substring(0, 6),
                      style: AppStyles.styleBold24(context)
                          .copyWith(color: const Color(0xff1A0F91)),
                    ),
                  ),
                  const SizedBox(height: 17),
                  ZoomIn(
                    duration: const Duration(milliseconds: 1200),
                    child: Text(
                      '''${widget.cardItemModel!.subtitle}
                                  ''',
                      style: AppStyles.styleRegular14(context).copyWith(
                        fontSize: 16,
                        color: Colors.black.withOpacity(.50),
                      ),
                    ),
                  ),
                  MediaQuery.sizeOf(context).width <= 700
                      ? const SizedBox(height: 56)
                      : const SizedBox(height: 270),
                  const SizedBox(
                    height: 30,
                  ),
                  ZoomIn(
                      duration: const Duration(milliseconds: 1200),
                      child: const CustomBottomContainer(color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
