import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logo_app/app/core/app_constant.dart';

class UserInputField extends StatelessWidget {
  const UserInputField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
  });
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontSize: 14.sp,
            color: Colors.black,
          ),
      keyboardType: textInputType,
      textInputAction: textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        isCollapsed: true,
        contentPadding: EdgeInsets.only(
          left: 10.w,
          top: 10.h,
          bottom: 10.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            5.r,
          ),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xffD0D2D7),
            style: BorderStyle.solid,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            5.r,
          ),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xffD0D2D7),
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            5.r,
          ),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xffD0D2D7),
            style: BorderStyle.solid,
          ),
        ),
        filled: true,
        hintStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 14.sp,
              color: Colors.black.withOpacity(0.5),
            ),
        hintText: hintText,
        fillColor: AppConstant.subtitleColor.withOpacity(0.2),
      ),
      validator: validator,
    );
  }
}
