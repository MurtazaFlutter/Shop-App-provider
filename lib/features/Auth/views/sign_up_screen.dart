import 'package:flutter/material.dart';
import 'package:shopping_app/common/default_button.dart';
import 'package:shopping_app/common/validator.dart';
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
  @override
  void dispose() {
    ValidatorMethods.fullNamecontroller.dispose();
    ValidatorMethods.emailController.dispose();
    ValidatorMethods.phoneNumbercontroller.dispose();
    ValidatorMethods.passwordController.dispose();
    ValidatorMethods.confirmPasswordController.dispose();
    super.dispose();
  }

  // void submitForm() {
  //   if()
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff06AB8D),
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
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        CustomTextField(
                          textInputType: TextInputType.name,
                          formFieldValidator: (value) =>
                              ValidatorMethods().validateFullName(value),
                          labelText: 'Full Name',
                          hinText: 'Ghullam Murtaza',
                          controller: ValidatorMethods.fullNamecontroller,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          textInputType: TextInputType.emailAddress,
                          formFieldValidator: (value) =>
                              ValidatorMethods().validateEmail(value),
                          labelText: 'Email Address',
                          hinText: 'example@gmail.com',
                          controller: ValidatorMethods.emailController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          textInputType: TextInputType.phone,
                          formFieldValidator: (value) =>
                              ValidatorMethods().validatePhone(value),
                          labelText: 'Phone Number',
                          hinText: '+92 347 2536415',
                          controller: ValidatorMethods.phoneNumbercontroller,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          textInputType: TextInputType.visiblePassword,
                          formFieldValidator: (value) =>
                              ValidatorMethods().validateFullName(value),
                          labelText: 'Password',
                          hinText: '*******',
                          controller: ValidatorMethods.passwordController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          textInputType: TextInputType.visiblePassword,
                          formFieldValidator: (value) => ValidatorMethods()
                              .validateConfirmPassword(value, value),
                          labelText: 'Confirm Password',
                          hinText: '******',
                          controller:
                              ValidatorMethods.confirmPasswordController,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        DefaultButton(
                          buttonTitle: 'Sign Up',
                          width: double.infinity,
                          height: 50,
                          onTap: () {
                            ValidatorMethods.signUpFormSubmit(context);
                          },
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
      ),
    );
  }
}
