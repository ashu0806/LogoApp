import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

mixin AppConstant {
  static const Color primaryColor = Color(0xffF10177);
  static const Color secondaryColor = Color(0xff7006CB);
  static const Color appBlack = Color.fromARGB(255, 0, 0, 0);
  static const Color appWhite = Color.fromARGB(255, 255, 255, 255);
  static const Color appGray = Color(0xffE6E6E6);
  static const Color appDarkGray = Color(0xff777777);
  static const Color subtitleColor = Color.fromARGB(255, 190, 190, 190);

  static const pexelApiKey =
      'BWvh4mCE43hY0yw9r2xB2R2fyx4UvpMZ9cGeIIQGbfShw6HzSLAxPgEY';

  static const String googleMapPlacesApi =
      'AIzaSyD5KDFxMv2F5V0F3hq4h5TwGDywvMLQ2A8';

  static const giphyApiKey = "fTbdIl0WM8fEP83JHaAAR9oPbM4m4JbC";

  static showLoader({
    required BuildContext context,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: Container(
            height: 50.h,
            width: 260.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            child: Platform.isAndroid
                ? CircularProgressIndicator(
                    strokeWidth: 2.w,
                    color: AppConstant.primaryColor,
                  )
                : CupertinoActivityIndicator(
                    color: AppConstant.primaryColor,
                    animating: true,
                    radius: 20.r,
                  ),
          ),
        );
      },
    );
  }

  static showSnackbar({
    required String headText,
    required String content,
    required SnackPosition position,
  }) {
    return Get.snackbar(
      headText,
      content,
      duration: const Duration(
        milliseconds: 1000,
      ),
      snackPosition: position,
    );
  }

  static void disposeKeyboard() {
    return FocusManager.instance.primaryFocus?.unfocus();
  }
}
