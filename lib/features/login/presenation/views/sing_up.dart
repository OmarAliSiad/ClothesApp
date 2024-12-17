import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lab_flutter/features/login/presenation/views/log_in.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_bottom_container.dart';
import '../../../../core/widgets/show_dialog.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/opcaity_text.dart';

class SingUp extends StatefulWidget {
  static const String id = 'SignUp';
  const SingUp({super.key});
  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSecure = true;

  void signUpUser() async {
    if (formKey.currentState!.validate()) {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Navigator.of(context).pushReplacementNamed(LogIn.id);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          showAswemoDialog(
            dialogType: DialogType.info,
            context: context,
            title: 'info',
            desc: 'The password provided is too weak.',
          );
        } else if (e.code == 'email-already-in-use') {
          showAswemoDialog(
            dialogType: DialogType.error,
            context: context,
            title: 'Error',
            desc: 'The account already exists for that email.',
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 76,
              ),
              const CustomLogo(),
              const SizedBox(
                height: 92,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 28),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sing up to your Account',
                        style: AppStyles.styleSemiBold20(context),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      OpcaityText(
                        text: 'Name',
                        textStyle: AppStyles.styleRegular14(context),
                        opacity: .7,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      CustomTextField(
                        controller: nameController,
                        obsure: false,
                        hintText: 'Enter your userName',
                        icon: const Icon(Icons.person),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      OpcaityText(
                        text: 'Email',
                        textStyle: AppStyles.styleRegular14(context),
                        opacity: .7,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      CustomTextField(
                        controller: emailController,
                        obsure: false,
                        hintText: 'Enter your Email',
                        icon: const Icon(Icons.email_outlined),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      OpcaityText(
                        text: 'Password',
                        textStyle: AppStyles.styleRegular14(context),
                        opacity: .7,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      CustomTextField(
                        controller: passwordController,
                        obsure: isSecure,
                        suffixIcon: IconButton(
                          onPressed: () {
                            isSecure = !isSecure;
                            setState(() {});
                          },
                          icon: isSecure
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                ),
                        ),
                        hintText: 'Enter your password',
                        icon: Padding(
                          padding: const EdgeInsets.only(
                            top: 13,
                            bottom: 18,
                            left: 0,
                          ),
                          child: Image.asset(
                            width: 16,
                            height: 21,
                            Assets.imagesPassword,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
              const Flexible(
                child: SizedBox(
                  height: 150,
                ),
              ),
              CustomButtonAuth(
                formState: formKey,
                text: 'SingUp',
                onPressed: signUpUser,
                email: emailController,
                password: passwordController,
              ),
              const SizedBox(
                height: 22,
              ),
              const CustomBottomContainer(color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
