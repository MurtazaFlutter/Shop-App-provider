import 'package:flutter/material.dart';
import '../../../common/validator.dart';
import '../widgets/header_text.dart';
import '../widgets/sign_in_auth_widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
              key: ValidatorMethods.loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderWidget(
                    title1: 'Welcome',
                    title2: 'Sign in to Continue',
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: LoginAuthWidgets(
                          emailController: emailController,
                          passwordController: passwordController),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
