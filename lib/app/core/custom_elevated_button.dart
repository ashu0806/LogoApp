import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logo_app/app/core/app_constant.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height ?? (Platform.isAndroid ? 45.h : 40.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppConstant.primaryColor,
              AppConstant.secondaryColor,
            ],
          ),
          borderRadius: BorderRadius.circular(
            5.r,
          ),
        ),
        child: child,
      ),
    );
  }
}
