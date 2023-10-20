import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:logo_app/app/core/app_constant.dart';
import 'package:logo_app/app/core/custom_elevated_button.dart';
import 'package:logo_app/app/core/image_paths.dart';
import 'package:logo_app/app/modules/feed/controllers/feed_controller.dart';

class FeedCreationView extends GetView<FeedController> {
  const FeedCreationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppConstant.subtitleColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        leading: IconButton(
          icon: Image.asset(
            closeIcon,
            height: 25.h,
            width: 25.w,
          ),
          onPressed: () {
            controller.setImagePathEmpty();
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              successIcon,
              height: 25.h,
              width: 25.w,
            ),
            onPressed: () {
              controller.setImagePathEmpty();
              Get.back();
            },
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                decoration: BoxDecoration(
                  color: AppConstant.appWhite,
                  borderRadius: BorderRadius.circular(
                    8.r,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppConstant.appBlack.withOpacity(0.1),
                      offset: const Offset(-2, 10),
                      spreadRadius: 2.w,
                      blurRadius: 8.w,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Obx(
                      () => controller.pickedImagePath!.isEmpty
                          ? const SizedBox()
                          : Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 250.h,
                                  width: 200.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      10.r,
                                    ),
                                    image: DecorationImage(
                                      image: FileImage(
                                        File(
                                          controller.pickedImagePath!,
                                        ),
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 30.h,
                                        width: 1.sw,
                                        decoration: BoxDecoration(
                                          color: AppConstant.secondaryColor
                                              .withOpacity(0.7),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                              10.r,
                                            ),
                                            topRight: Radius.circular(
                                              10.r,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 2.h,
                                        right: 10.w,
                                        child: GestureDetector(
                                          onTap: () {
                                            controller.setImagePathEmpty();
                                          },
                                          child: Image.asset(
                                            closeIcon,
                                            height: 25.h,
                                            width: 25.w,
                                            color: AppConstant.appWhite,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                    ),
                    TextFormField(
                      maxLines: 4,
                      decoration: const InputDecoration(
                        hintText: 'Write Something...',
                        border: InputBorder.none, // Remove border
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomElevatedButton(
                onPressed: () {
                  controller.getGallery();
                },
                height: 35.h,
                width: 120.w,
                child: Text(
                  'Add Image',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 14.sp,
                        color: AppConstant.appWhite,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
