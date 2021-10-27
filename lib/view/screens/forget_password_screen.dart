import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zigza/constants/validation_constants.dart';
import 'package:zigza/controller/form_validation_controller.dart';
import 'package:zigza/view/widgets/common_widget.dart';

class ForgetPasswordScreen extends StatelessWidget{
  final FormValidationController _formValidationController =
  Get.put(FormValidationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 60.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60.h,),
                // ------=====================  back button  =====================----------------
                InkWell(
                  onTap: (){
                    Get.back();
                    _formValidationController.clearAllTextFields();
                    },
                  child: Row(children: [
                    Icon(CupertinoIcons.back, color: Colors.black, size: 90.r,),
                  ],),
                ),
                // ------=====================  logo and title  =====================----------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    logoAndTitle()
                  ],),
                SizedBox(height: 80.h,),
                commonText(
                  text: "Forgot Password?",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 56.sp
                ),
                SizedBox(height: 160.h,),
                commonText(
                    text: "Enter Email for Verification Code",
                    color: Colors.black,
                    fontSize: 42.sp
                ),
                SizedBox(height: 40.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 40.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ------=====================  form  =====================----------------
                      Form(
                        key: _formValidationController.forgetPasswordFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                        children: [
                          commonTextFormField(
                              icon: Icon(
                                CupertinoIcons.person,
                                color: Colors.black54,
                              ),
                              hintText: "Email",
                              validation: ValidationConstants.emailValidator,
                              controller: _formValidationController.emailController
                          )
                        ],
                      ),),
                      SizedBox(height: 600.h,),
                      // ------=====================  send code button  =====================----------------
                      customButton(title: "SEND CODE" , onTap: (){})
                    ],
                  ),
                ),
                SizedBox(height: 60.h,),

            ],),
          ),
        ),
      ),
    );
  }
}
