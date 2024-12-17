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
      price: 300,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesHoodiesLong,
      title: 'Long Sleeve Hoodie',
      subtitle:
          'Stay warm with this long sleeve hoodie, perfect for chilly days.',
      price: 350,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesSweetShirt,
      title: 'Graphic T-Shirt',
      subtitle: 'Express your style with this trendy graphic tee.',
      price: 250,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesJacket,
      title: 'Denim Jacket',
      subtitle: 'A timeless denim jacket that never goes out of style.',
      price: 150,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesTshirt,
      title: 'Basic T-Shirt',
      subtitle: 'A versatile basic tee for any casual outfit.',
      price: 300,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesVest,
      title: 'Casual Vest',
      subtitle: 'Layer up with this stylish casual vest.',
      price: 150,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesGraffiti,
      title: 'Streetwear Hoodie',
      subtitle: 'Make a statement with this bold streetwear hoodie.',
      price: 200,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesSweetShirt4,
      title: 'Athletic Tank Top',
      subtitle: 'Stay cool during workouts with this breathable tank top.',
      price: 100,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesZephyr,
      title: 'Chic Blazer',
      subtitle: 'Elevate your look with this elegant chic blazer.',
      price: 150,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesHoodie,
      title: 'Classic Hoodie',
      subtitle: 'A stylish and comfortable hoodie for everyday wear.',
      price: 300,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesHoodiesLong,
      title: 'Long Sleeve Hoodie',
      subtitle:
          'Stay warm with this long sleeve hoodie, perfect for chilly days.',
      price: 350,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesSweetShirt,
      title: 'Sporty T-Shirt',
      subtitle: 'Get active in this comfortable sporty t-shirt.',
      price: 250,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesJacket,
      title: 'Lightweight Windbreaker',
      subtitle: 'Perfect for breezy days, this windbreaker is a must-have.',
      price: 150,
    ),
    CardItemModel(
      IsImagePicked: false,
      image: Assets.imagesVest,
      title: 'Stylish Puffer Vest',
      subtitle: 'Stay warm and fashionable with this puffer vest.',
      price: 150,
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
