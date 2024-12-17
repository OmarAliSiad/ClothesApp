import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final Widget? icon;
  final String hintText;
  final bool obsure;
  final int? maxLines;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final int? maxLength;
  final Widget ?suffixIcon; 
  const CustomTextField(
      {super.key,
      this.icon,
      required this.hintText,
      required this.obsure,
      this.maxLines,
      required this.controller,
      this.keyboardType,
      this.maxLength, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.03),
            blurRadius: 4,
            spreadRadius: 0,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide.none,
        ),
        child: TextFormField(
        
          style: const TextStyle(color: Colors.black),
          maxLength: maxLength,
          keyboardType: keyboardType,
          controller: controller,
          maxLines: obsure ? 1 : maxLines,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          obscureText: obsure,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintFadeDuration: const Duration(milliseconds: 400),
            hintText: hintText,
            hintStyle: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xFF000000).withOpacity(0.5),
            ),
            prefixIcon: icon,
            suffixIcon: suffixIcon,
            border: BuildOutlineBorder(),
            enabledBorder: BuildOutlineBorder(),
            focusedBorder: BuildOutlineBorder(),
          ),
          
        ),
      ),
    );
  }

  OutlineInputBorder BuildOutlineBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none,
    );
  }
}
