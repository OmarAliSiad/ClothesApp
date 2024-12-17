import 'package:flutter/material.dart';
import 'package:lab_flutter/features/product_view/presenation/widgets/custom_product_item.dart';
import '../../../../core/models/card_item_model.dart';
import '../views/product_details_view.dart';

class ProductsItemListView extends StatelessWidget {
  final List<CardItemModel> cardItemsModelDetails; 
  const ProductsItemListView({
    super.key, required this.cardItemsModelDetails,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: cardItemsModelDetails.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 34,
            mainAxisExtent: 198,
            mainAxisSpacing: 18,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsView(
                      cardItemModel: cardItemsModelDetails[index],
                    ),
                  ),
                );
              },
              child: CustomProductItem(
                index: index,
                cardItemModel: cardItemsModelDetails[index],
              ),
            );
          },
        );
     
  }
}
