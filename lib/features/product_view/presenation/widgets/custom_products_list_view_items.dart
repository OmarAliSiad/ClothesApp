import 'package:flutter/material.dart';

import 'custom_product_list_view.dart';

class CustomListViewProductsItems extends StatefulWidget {
  const CustomListViewProductsItems({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  State<CustomListViewProductsItems> createState() =>
      _CustomListViewProductsItemsState();
}

class _CustomListViewProductsItemsState
    extends State<CustomListViewProductsItems> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(
        width: 19,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: widget.categories.length,
      itemBuilder: (context, index) {
        return (index == 3)
            ? Padding(
                padding: const EdgeInsets.only(right: 27),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  child: CustomProductListViewItem(
                    active: activeIndex == index,
                    title: widget.categories[index],
                  ),
                ),
              )
            : InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                child: CustomProductListViewItem(
                  active: activeIndex == index,
                  title: widget.categories[index],
                ),
              );
      },
    );
  }
}
