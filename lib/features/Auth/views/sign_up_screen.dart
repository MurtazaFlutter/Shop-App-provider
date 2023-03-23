import 'package:flutter/material.dart';
import 'package:shopping_app/common/validator.dart';
import '../widgets/sign_up_auth_widgets.dart';
import '../widgets/header_text.dart';

class SignUpSceen extends StatefulWidget {
  const SignUpSceen({super.key});

  @override
  State<SignUpSceen> createState() => _SignUpSceenState();
}

class _SignUpSceenState extends State<SignUpSceen> {
  @override
  void dispose() {
    ValidatorMethods.fullNamecontroller.dispose();
    ValidatorMethods.emailController.dispose();
    ValidatorMethods.phoneNumbercontroller.dispose();
    ValidatorMethods.passwordController.dispose();
    ValidatorMethods.confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff06AB8D),
        child: SafeArea(
          child: Form(
            key: ValidatorMethods.signUpFormKey,
            child: Column(
              children: [
                const HeaderWidget(
                  title1: 'Register',
                  title2: 'Enter your personal details to create your account',
                ),
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: const SignUpAuthWidgets(),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
