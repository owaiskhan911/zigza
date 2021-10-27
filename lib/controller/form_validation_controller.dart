import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormValidationController extends GetxController{
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  TextEditingController  emailController,
      passwordController,
      usernameController,
      phoneNumberController;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    usernameController = TextEditingController();
    phoneNumberController = TextEditingController();

  }

  //                          ===============================
  // ==================== ----- -- used to clear all textFormFields -- ----- ======================
  //                               ======================


  void clearAllTextFields(){
    emailController.clear();
    passwordController.clear();
    usernameController.clear();
    phoneNumberController.clear();
  }

}