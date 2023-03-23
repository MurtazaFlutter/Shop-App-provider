import 'package:flutter/material.dart';
import '../../../common/custom_text_field.dart';
import '../../../common/default_button.dart';
import '../../../common/validator.dart';
import '../views/sign_up_screen.dart';
import 'account_select.dart';
import 'password_action.dart';

class LoginAuthWidgets extends StatelessWidget {
  const LoginAuthWidgets({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomTextField(
              textInputType: TextInputType.emailAddress,
              formFieldValidator: (value) =>
                  ValidatorMethods().validateEmail(value),
              labelText: 'Your Email Address',
              hinText: 'example@gmail.com',
              controller: emailController,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              textInputType: TextInputType.emailAddress,
              formFieldValidator: (value) =>
                  ValidatorMethods().validatePassword(value),
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
              buttonTitle: 'Sign in',
              width: double.infinity,
              height: 50,
              onTap: () {
                ValidatorMethods.loginFormSubmit(context);
              },
            ),
            const SizedBox(
              height: 100,
            ),
            AccountSelect(
              title1: 'Don\'t have an account?',
              title2: 'Sign Up',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpSceen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
