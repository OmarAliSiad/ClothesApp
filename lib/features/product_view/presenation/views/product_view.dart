import 'package:flutter/material.dart';
import 'package:lab_flutter/features/home_view/presenation/views/home_view.dart';
import 'package:lab_flutter/features/main/presenation/views/main_screen.dart';
import '../../../../core/models/card_item_model.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/custom_app_bar_product_view.dart';
import '../widgets/products_item_list_view.dart';

class ProductView extends StatefulWidget {
  static List<CardItemModel> productsList = [
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesHoodie,
      title: 'Classic Hoodie',
      subtitle: 'A stylish and comfortable hoodie for everyday wear.',
      price: 29.99,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesHoodiesLong,
      title: 'Long Sleeve Hoodie',
      subtitle:
          'Stay warm with this long sleeve hoodie, perfect for chilly days.',
      price: 34.99,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesSweetShirt,
      title: 'Energy Drink - Sprint',
      subtitle: 'Get a quick energy boost with this refreshing drink.',
      price: 2.50,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesJacket,
      title: 'V Cola',
      subtitle: 'Enjoy the classic taste of V Cola, refreshing and fizzy.',
      price: 1.50,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesTshirt,
      title: 'Bako Biscuits',
      subtitle: 'Deliciously crunchy biscuits, perfect for snacking.',
      price: 3.00,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesVest,
      title: 'Big Cola',
      subtitle: 'Bold and refreshing, Big Cola is a classic choice.',
      price: 1.50,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesGraffiti,
      title: 'Tipo Treats',
      subtitle: 'Indulge in the sweet, moist delight of Tipo.',
      price: 2.00,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesSweetShirt4,
      title: 'Cheetos Crunch',
      subtitle: 'Experience the crunch of Cheetos, a classic snack.',
      price: 1.00,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesZephyr,
      title: 'Lays Chips - Classic',
      subtitle: 'Crispy and delicious, the perfect snack for any occasion.',
      price: 1.50,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesHoodie,
      title: 'Classic Hoodie',
      subtitle: 'A stylish and comfortable hoodie for everyday wear.',
      price: 29.99,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesHoodiesLong,
      title: 'Long Sleeve Hoodie',
      subtitle:
          'Stay warm with this long sleeve hoodie, perfect for chilly days.',
      price: 34.99,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesSweetShirt,
      title: 'Energy Drink - Sprint',
      subtitle: 'Get a quick energy boost with this refreshing drink.',
      price: 2.50,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesJacket,
      title: 'V Cola',
      subtitle: 'Enjoy the classic taste of V Cola, refreshing and fizzy.',
      price: 1.50,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesVest,
      title: 'Big Cola',
      subtitle: 'Bold and refreshing, Big Cola is a classic choice.',
      price: 1.50,
    ),
  ];
  static String id = 'ProductView';
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarProductView(
        onTap: () {
          Navigator.of(context).pushReplacementNamed(MainScreen.id);
        },
        leadingBetweenIconAndTitle: 30.01,
        textStyle: AppStyles.styleBold24(context),
        title: 'products',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: ProductsItemListView(
                  cardItemsModelDetails: ProductView.productsList,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
