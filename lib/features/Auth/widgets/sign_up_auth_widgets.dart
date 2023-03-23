import 'package:flutter/material.dart';
import 'package:shopping_app/features/Auth/views/sign_in_screen.dart';
import '../../../common/custom_text_field.dart';
import '../../../common/default_button.dart';
import '../../../common/validator.dart';
import 'account_select.dart';

class SignUpAuthWidgets extends StatelessWidget {
  const SignUpAuthWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  ValidatorMethods().phoneValidator(value),
              labelText: 'Phone Number',
              hinText: '+92 347 2536415',
              controller: ValidatorMethods.phoneNumbercontroller,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              obSecure: true,
              textInputType: TextInputType.visiblePassword,
              formFieldValidator: (value) =>
                  ValidatorMethods().validatePassword(value),
              labelText: 'Password',
              hinText: '*******',
              controller: ValidatorMethods.passwordController,
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
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
