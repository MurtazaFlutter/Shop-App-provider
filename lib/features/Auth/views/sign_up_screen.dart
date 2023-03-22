import 'package:flutter/material.dart';
import 'package:shopping_app/common/default_button.dart';
import 'package:shopping_app/features/Auth/views/sign_in_screen.dart';
import 'package:shopping_app/features/Auth/widgets/account_select.dart';
import '../../../common/custom_text_field.dart';
import '../widgets/header_text.dart';

class SignUpSceen extends StatefulWidget {
  const SignUpSceen({super.key});

  @override
  State<SignUpSceen> createState() => _SignUpSceenState();
}

class _SignUpSceenState extends State<SignUpSceen> {
  TextEditingController fullNamecontroller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumbercontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    fullNamecontroller.dispose();
    emailController.dispose();
    phoneNumbercontroller.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      CustomTextField(
                        labelText: 'Full Name',
                        hinText: 'Ghullam Murtaza',
                        controller: fullNamecontroller,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        labelText: 'Email Address',
                        hinText: 'example@gmail.com',
                        controller: emailController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        labelText: 'Phone Number',
                        hinText: '+92 347 2536415',
                        controller: phoneNumbercontroller,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        labelText: 'Password',
                        hinText: '*******',
                        controller: passwordController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextField(
                        labelText: 'Confirm Password',
                        hinText: '******',
                        controller: confirmPasswordController,
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      DefaultButton(
                        buttonTitle: 'Sign Up',
                        width: double.infinity,
                        height: 50,
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      AccountSelect(
                        title1: 'Have an account?',
                        title2: 'Sign in',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
