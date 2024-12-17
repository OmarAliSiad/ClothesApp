import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lab_flutter/features/login/presenation/views/sing_up.dart';
import 'package:lab_flutter/features/main/presenation/views/main_screen.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_bottom_container.dart';
import '../../../../core/widgets/show_dialog.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_logo.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/opcaity_text.dart';

class LogIn extends StatefulWidget {
  static String id = 'LogIn';
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSecure = true;
  void signInUser() async {
    if (formKey.currentState!.validate()) {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        if (FirebaseAuth.instance.currentUser!.emailVerified) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(MainScreen.id, (context) => false);
        } else {
          showAswemoDialog(
            dialogType: DialogType.success,
            context: context,
            title: 'success',
            desc: 'A link has been sent to your email',
          );
          FirebaseAuth.instance.currentUser!.sendEmailVerification();
        }
      } on FirebaseAuthException catch (e) {
        showAswemoDialog(
          dialogType: DialogType.error,
          context: context,
          title: 'Error',
          desc:
              'The supplied auth credential is incorrect , Enter The email and password correctly',
        );
      } catch (e) {
        showAswemoDialog(
          dialogType: DialogType.error,
          context: context,
          title: 'Error',
          desc: 'error occur try in antoher time',
        );
      }
    }
  }

  void forgotPassword() async {
    if (emailController.text == '' || emailController.text.isEmpty) {
      showAswemoDialog(
        dialogType: DialogType.error,
        context: context,
        title: 'Error',
        desc: 'enter your email',
      );
    } else {
      try {
        if (FirebaseAuth.instance.currentUser != null) {
          await FirebaseAuth.instance
              .sendPasswordResetEmail(email: emailController.text);
          showAswemoDialog(
            dialogType: DialogType.success,
            context: context,
            title: 'success',
            desc: 'A link has been sent to your email',
          );
        } else {
          showAswemoDialog(
            dialogType: DialogType.error,
            context: context,
            title: 'error',
            desc:
                'Please make sure that the email address you entered is correct',
          );
        }
      } catch (e) {
        showAswemoDialog(
          dialogType: DialogType.error,
          context: context,
          title: 'Error',
          desc: 'error occur try in antoher time',
        );
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
                        'Login to your Account',
                        style: AppStyles.styleSemiBold20(context),
                      ),
                      const SizedBox(
                        height: 32,
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
                        height: 32,
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
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              forgotPassword();
                            },
                            child: Text(
                              'Forgot Password?',
                              style: AppStyles.styleRegular14(context).copyWith(
                                fontSize: 16,
                                color: const Color(0xff1A0F91),
                              ),
                            ),
                          )
                        ],
                      )
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
                onPressed: signInUser,
                text: 'Login',
                email: emailController,
                password: passwordController,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Donot have an account? ',
                      style: AppStyles.styleRegular14(context),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(SingUp.id);
                      },
                      child: Text(
                        'SignUp',
                        style: AppStyles.styleRegular14(context).copyWith(
                          fontSize: 16,
                          color: const Color(0xff1A0F91),
                        ),
                      ),
                    ),
                  ],
                ),
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
