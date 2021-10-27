import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zigza/constants/common_constants.dart';
import 'package:zigza/constants/validation_constants.dart';
import 'package:zigza/controller/form_validation_controller.dart';
import 'package:zigza/view/widgets/common_widget.dart';

class SignUpScreen extends StatelessWidget{
  final FormValidationController _formValidationController =
  Get.put(FormValidationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 100.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60.h,),
                // ============ logo and title ============
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  logoAndTitle()
                ],),
                SizedBox(height: 60,),

                // ============ Form ============
                Form(
                  key: _formValidationController.signUpFormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      commonTextFormField(
                        icon: Icon(
                        CupertinoIcons.person,
                        color: Colors.black54,
                      ),
                        hintText: "Username",
                        validation: ValidationConstants.commonValidator,
                        controller: _formValidationController.usernameController
                      ),
                      SizedBox(height: 60.h,),
                      commonTextFormField(
                          icon: Icon(
                            CupertinoIcons.person,
                            color: Colors.black54,
                          ),
                          hintText: "Email",
                          validation: ValidationConstants.emailValidator,
                          controller: _formValidationController.emailController
                      ),
                      SizedBox(height: 60.h,),
                      commonTextFormField(
                          icon: Icon(
                        CupertinoIcons.lock,
                        color: Colors.black54,
                      ),
                          hintText: "Password",
                          validation: ValidationConstants.passwordValidator,
                          controller: _formValidationController.passwordController,
                          obscureText: true
                      ),
                      SizedBox(height: 60.h,),
                      commonTextFormField(
                          icon: Icon(
                            CupertinoIcons.lock,
                            color: Colors.black54,
                          ),
                          hintText: "Phone No",
                          validation: ValidationConstants.commonValidator,
                          controller: _formValidationController.phoneNumberController
                      ),
                    ],
                  ),
                ),
                // =-=====================  -- sign up buttons --  ==================-=
                SizedBox(height: 100.h,),
                customButton(
                    title: "SIGNUP",
                    onTap: (){
                      _formValidationController.clearAllTextFields();
                    }
                ),
                //   ---------- ============= Don't have an account? signUp ============ ---------------
                SizedBox(height: 100.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    commonText(
                        text: "Already have an account! ",
                        color: Colors.black,
                        fontSize: 45.sp,
                        fontWeight: FontWeight.bold
                    ),
                    InkWell(
                        onTap: (){
                          Get.back();
                          _formValidationController.clearAllTextFields();
                        },
                        child:
                        commonText(
                            text: "LogIn",
                            fontSize: 47.sp,
                            color: orangeColor,
                            fontWeight: FontWeight.w500
                        )),
                  ],),
                SizedBox(height: 60.h,),
                //   ---------- ============= Social Buttons  ============ ---------------
                socialNetworkWidget(),
                SizedBox(height: 60.h,),
              ],
            ),
          ),
        ),),
    );
  }
}
