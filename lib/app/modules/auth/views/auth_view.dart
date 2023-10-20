import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:logo_app/app/core/app_constant.dart';
import 'package:logo_app/app/core/config.dart';
import 'package:logo_app/app/core/custom_elevated_button.dart';
import 'package:logo_app/app/core/image_paths.dart';
import 'package:logo_app/app/core/user_input_field.dart';
import 'package:logo_app/app/routes/app_pages.dart';
import 'package:uuid/uuid.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(
      AuthController(),
    );
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator();
            return false;
          },
          child: ListView(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                ),
                child: Container(
                  width: 1.sw,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  decoration: BoxDecoration(
                    color: AppConstant.appWhite,
                    borderRadius: BorderRadius.circular(
                      5.r,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppConstant.appBlack.withOpacity(0.1),
                        offset: const Offset(0, 0),
                        spreadRadius: 3.w,
                        blurRadius: 8.w,
                      ),
                    ],
                  ),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Image.asset(
                          authLogo,
                          height: 100.h,
                          width: 1.sw,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        UserInputField(
                          controller: controller.mobileNumberController,
                          hintText: 'Mobile Number',
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a mobile number";
                            }
                            if (!RegExp(
                                    r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                                .hasMatch(value)) {
                              return 'Please enter a valid mobile number';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        UserInputField(
                          controller: controller.passwordController,
                          hintText: 'Password',
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a password";
                            }
                            if (value.length < 6) {
                              return "Password must be of 6 digit";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomElevatedButton(
                          onPressed: () async {
                            if (controller.formKey.currentState!.validate()) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              await Config.flutterSecureStorage.write(
                                key: Config.userTokenId,
                                value: const Uuid().v1(),
                              );
                              Get.offNamedUntil(
                                Routes.HOME,
                                (route) => false,
                              );
                            }
                          },
                          height: 35.h,
                          width: 1.sw,
                          child: Text(
                            'Login',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 14.sp,
                                  color: AppConstant.appWhite,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "GOA",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 26.sp,
                          color: AppConstant.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    "5 Jan - 8 Jan",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 15.sp,
                          color: AppConstant.secondaryColor,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Image.asset(
          authBottomBg,
          height: 200.h,
          width: 1.sw,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
