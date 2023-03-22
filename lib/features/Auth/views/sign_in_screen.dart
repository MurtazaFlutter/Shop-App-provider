import 'package:flutter/material.dart';

import '../../../common/custom_text_field.dart';
import '../../../common/default_button.dart';
import '../widgets/account_select.dart';
import '../widgets/header_text.dart';
import '../widgets/password_action.dart';

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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 30),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          CustomTextField(
                            labelText: 'Your Email Address',
                            hinText: 'example@gmail.com',
                            controller: emailController,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            obSecure: true,
                            labelText: 'Password',
                            hinText: '********',
                            controller: passwordController,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const PasswordAction(),
                          const SizedBox(
                            height: 40,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          DefaultButton(
                            width: 200,
                            height: 50,
                            buttonTitle: 'gsggt',
                            onTap: () {
                              debugPrint('Working?');
                            },
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const AccountSelect(
                            title1: 'Don\'t have an account?',
                            title2: 'Sign Up',
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
