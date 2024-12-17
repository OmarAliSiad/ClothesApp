import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';

class CustomButtonAuth extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController password;
  final GlobalKey<FormState> formState;
  final void Function()? onPressed;
  final String text;
  const CustomButtonAuth(
      {super.key,
      required this.text,
      required this.formState,
      required this.email,
      required this.password,
      this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      color: const Color(0xff191BA9),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      minWidth: 347,
      height: 48,
      child: Text(
        text,
        style: AppStyles.styleMedium18(context).copyWith(color: Colors.white),
      ),
    );
  }
}
