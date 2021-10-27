import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigza/constants/common_constants.dart';

// ------------ ==========  Common TextFormField =========== ------------------

Widget commonTextFormField({String hintText, Icon icon,TextEditingController controller, Function validation, bool obscureText = false }) {
  return TextFormField(
    decoration: InputDecoration(
      prefixIcon: icon,
      hintText: hintText,

      // --- when user does not interact with -----
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, ),
        borderRadius: BorderRadius.circular(80.r),
      ),

      // --- when user interact with -----
      focusedBorder:OutlineInputBorder(
        borderSide:  BorderSide(color: orangeColor, width: 1.0),
        borderRadius: BorderRadius. circular(80.r),
      ),

    ),
    controller: controller,
    validator: validation,
    obscureText: obscureText,
  );
}

//  =============  its custom button used in different screen ============

Widget customButton ({String title,Function onTap }) {
  return Container(
      height: 165.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: orangeColor,
      ),
      child: InkWell(
        onTap: onTap,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    fontSize: 50.sp, fontWeight: FontWeight.bold, color: Colors.white)
            ),
          ),
        ),
      )
  );
}

//  ============= common text ============
Text commonText({String text, Color color, double fontSize, FontWeight fontWeight}) {
  return Text(text,  style: GoogleFonts.quicksand(
      textStyle: TextStyle(
          fontSize: fontSize, color: color, fontWeight: fontWeight )));
}

// ===============------ logo and title ---===================
Widget logoAndTitle() {
  return Container(
    width: 460.r,
    height: 420.h,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("asset/images/logo_2.png"))),
  );
}

// ---------========================  socialNetworkWidget ====================---------------
Widget socialNetworkWidget() {
  return Column(
    children: [
      Row(
        children: [
          Expanded(child: Divider(color: Colors.black)),
          SizedBox(width: 25.w,),
          commonText(text: "OR"),
          SizedBox(width: 25.w,),
          Expanded(child: Divider(color: Colors.black)),
        ],
      ),
      //   ---------- ============= Fb and google buttons  ============ ---------------
      SizedBox(height: 60.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonText(
              text: "Login with Social Networks",
              color: Colors.black,
              fontSize: 45.sp,
              fontWeight: FontWeight.bold
          )
        ],
      ),
      SizedBox(height: 100.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              print("Clicked fb Button");
            },
            child: Container(
              width: 110.r,
              height: 110.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/images/fb_logo.png"))),
            ),
          ),
          SizedBox(width: 90.w,),
          InkWell(
            onTap: (){
              print("Clicked Google Button");
            },
            child: Container(
              width: 110.r,
              height: 110.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/images/google_logo.png"))),
            ),
          ),
        ],
      ),
    ],
  );
}