import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zigza/constants/common_constants.dart';
import 'package:zigza/constants/validation_constants.dart';
import 'package:zigza/controller/form_validation_controller.dart';
import 'package:zigza/view/screens/forget_password_screen.dart';
import 'package:zigza/view/screens/signup_screen.dart';
import 'package:zigza/view/widgets/common_widget.dart';

class LoginScreen extends StatelessWidget {
  final FormValidationController _formValidationController =
      Get.put(FormValidationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60.h,),
                // -------- =========== logo and images ========= ----------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    logoAndTitle(),
                  ],
                ),
                SizedBox(
                  height: 100.h,
                ),

                // -------- =========== Text Field Form  ========= ----------
                Form(
                    key: _formValidationController.loginFormKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        //  ---  ====== email =====  ----
                        commonTextFormField(
                            hintText: "Email",
                            icon: Icon(
                              CupertinoIcons.person,
                              color: Colors.black54,
                            ),
                            controller:
                                _formValidationController.emailController,
                            validation: ValidationConstants.emailValidator),
                        SizedBox(
                          height: 60.h,
                        ),
                        //  ---  ====== password =====  ----
                        commonTextFormField(
                            hintText: "Password",
                            icon: Icon(
                              CupertinoIcons.lock,
                              color: Colors.black54,
                            ),
                            controller: _formValidationController.passwordController,
                            obscureText: true,
                            validation: ValidationConstants.commonValidator),
                      ],
                    )),
              //   ---------- ============= login button ============ ---------------
                SizedBox(height: 150.h,),
                customButton(title: "LOGIN"),
                SizedBox(height: 60.h,),
                //   ---------- ============= forget password ============ ---------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  InkWell(
                      onTap: (){
                        Get.to(() => ForgetPasswordScreen());
                        _formValidationController.clearAllTextFields();
                      },
                      child:
                      commonText(
                        text: "Forget Password?",
                        fontSize: 40.sp,
                        color: Colors.black,
                      )),
                    SizedBox(width: 50.w,)
                ],),
                SizedBox(height: 190.h,),
                //   ---------- ============= Don't have an account? signUp ============ ---------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    commonText(
                        text: "Don't have an account? ",
                        color: Colors.black,
                        fontSize: 45.sp,
                        fontWeight: FontWeight.bold
                    ),

                    InkWell(
                        onTap: (){
                          Get.to(() => SignUpScreen());
                          _formValidationController.clearAllTextFields();
                        },
                        child:
                        commonText(
                          text: "Sign Up",
                          fontSize: 47.sp,
                          color: orangeColor,
                          fontWeight: FontWeight.w500
                        )),
                  ],),
                //   ---------- ============= Social Buttons  ============ ---------------
              SizedBox(height: 60.h,),
                socialNetworkWidget(),

                SizedBox(height: 90.h,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
