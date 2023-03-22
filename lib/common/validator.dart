import 'package:flutter/material.dart';
import '../features/homepage/views/home.dart';

class ValidatorMethods {
  //Controllers
  static TextEditingController fullNamecontroller = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController phoneNumbercontroller = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController confirmPasswordController =
      TextEditingController();
  static final loginFormKey = GlobalKey<FormState>();
  static final signUpFormKey = GlobalKey<FormState>();

//Validations
  validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Full Name.';
    }
    if (value.length < 3) {
      return 'Full name must be at least 3 characters long.';
    }
    return null;
  }

  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  String validateEmail(String value) {
    if (value.isEmpty) {
      return "Email is required";
    }
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return '';
  }

  final phoneRegex = RegExp(r'^\d{10}$');
  String? validatePhone(String? value) {
    if (value!.isEmpty) {
      return 'Phone number can\'t be empty';
    }
    if (!phoneRegex.hasMatch(value)) {
      return 'Please enter a valid 10 digit phone number';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password.';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long.';
    }
    return null;
  }

  String? validateConfirmPassword(
      String? passwordValue, String? confirmPasswordValue) {
    if (confirmPasswordValue!.isEmpty) {
      return 'Confirm password cannot be empty';
    }
    if (passwordValue != confirmPasswordValue) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? loginFormSubmit(BuildContext context) {
    if (loginFormKey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: ((context) => const Home())),
          (route) => false);
    }
    return null;
  }

  static String? signUpFormSubmit(BuildContext context) {
    if (signUpFormKey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: ((context) => const Home())),
          (route) => false);
    }
    return null;
  }
}
