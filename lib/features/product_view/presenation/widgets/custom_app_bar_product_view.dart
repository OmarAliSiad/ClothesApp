import 'package:flutter/material.dart';

class CustomAppBarProductView extends StatelessWidget
    implements PreferredSizeWidget {
  final String? title;
  final TextStyle textStyle;
  final double leadingBetweenIconAndTitle;
  final void Function() onTap;
  const CustomAppBarProductView({
    super.key,
    this.title,
    required this.textStyle,
    required this.leadingBetweenIconAndTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      forceMaterialTransparency: true,
      title: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: onTap,
            child: const Icon(Icons.arrow_back_ios),
          ),
          SizedBox(
            width: leadingBetweenIconAndTitle,
          ),
          title == null
              ? Container()
              : Text(
                  title!,
                  style:  textStyle,
                ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
