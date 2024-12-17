import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';

class CustomProductListViewItem extends StatelessWidget {
  final String title;
  final bool active;
  const CustomProductListViewItem(
      {super.key, required this.title, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 48,
      decoration: BoxDecoration(
        boxShadow: active
            ? <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 0,
                  blurRadius: 17,
                  offset: const Offset(0, 10), // changes position of shadow
                ),
              ]
            : <BoxShadow>[],
        color: active ? const Color(0xff1A0F91) : const Color(0xffEEEEEE),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: AppStyles.styleMedium16(context)
              .copyWith(color: active ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
