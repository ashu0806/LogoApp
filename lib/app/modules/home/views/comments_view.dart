import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:logo_app/app/core/app_constant.dart';
import 'package:logo_app/app/core/image_paths.dart';

class CommentsView extends StatelessWidget {
  const CommentsView({
    super.key,
    required this.avatarAsset,
    required this.name,
    required this.postedImageAsset,
    required this.caption,
    required this.likeAsset,
    required this.likeCount,
    required this.commentCount,
  });

  final String avatarAsset;
  final String name;
  final String postedImageAsset;
  final String caption;
  final String likeAsset;
  final String likeCount;
  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator();
          return false;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 9,
              child: ListView(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    height: 60.h,
                    decoration: const BoxDecoration(
                      color: AppConstant.secondaryColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          avatarAsset,
                          height: 40.h,
                          width: 40.w,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          name.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 16.sp,
                                color: AppConstant.appWhite,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            closeIcon,
                            height: 25.h,
                            width: 25.w,
                            color: AppConstant.appWhite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    postedImageAsset,
                    width: 1.sw,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 15.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          caption,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 15.sp,
                                color: AppConstant.appBlack,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              likeAsset,
                              height: 20.h,
                              width: 20.w,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 5.h,
                              ),
                              child: Text(
                                likeCount,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 12.sp,
                                      color: AppConstant.appBlack,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 5.h,
                              ),
                              child: Text(
                                commentCount,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 12.sp,
                                      color: AppConstant.appBlack,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Image.asset(
                              commentIcon,
                              height: 20.h,
                              width: 20.w,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    height: 0.h,
                    color: AppConstant.appBlack,
                  ),
                  SizedBox(
                    height: 250.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 15.h,
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                avatarAsset,
                                height: 40.h,
                                width: 40.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 10.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF1E2FD),
                                    borderRadius: BorderRadius.circular(
                                      12.r,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "KALPANA",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              fontSize: 12.sp,
                                              color: AppConstant.appBlack,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        "This was the best activity for me. Enjoyed a lot with you guys.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge!
                                            .copyWith(
                                              fontSize: 12.sp,
                                              color: AppConstant.appBlack,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                avatar3,
                                height: 40.h,
                                width: 40.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 10.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF1E2FD),
                                    borderRadius: BorderRadius.circular(
                                      12.r,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "SHREYA SINGH",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              fontSize: 12.sp,
                                              color: AppConstant.appBlack,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        "Finally I did something for the environment :)",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge!
                                            .copyWith(
                                              fontSize: 12.sp,
                                              color: AppConstant.appBlack,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                avatar1,
                                height: 40.h,
                                width: 40.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 10.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF1E2FD),
                                    borderRadius: BorderRadius.circular(
                                      12.r,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "SHUBHAM GUPTA",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                  fontSize: 12.sp,
                                                  color: AppConstant.appBlack,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          const Spacer(),
                                          Icon(
                                            Icons.delete_outline_rounded,
                                            size: 18.sp,
                                            color: AppConstant.secondaryColor,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        "I didn't know plantation could be fun.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge!
                                            .copyWith(
                                              fontSize: 12.sp,
                                              color: AppConstant.appBlack,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                  color: AppConstant.appWhite,
                  boxShadow: [
                    BoxShadow(
                      color: AppConstant.appBlack.withOpacity(0.1),
                      offset: const Offset(0, 0),
                      spreadRadius: 1.w,
                      blurRadius: 1.w,
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            // controller: ,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              contentPadding: EdgeInsets.only(
                                left: 15.w,
                                top: 10.h,
                                bottom: 10.h,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  30.r,
                                ),
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Color(0xffD0D2D7),
                                  style: BorderStyle.solid,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  30.r,
                                ),
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Color(0xffD0D2D7),
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  30.r,
                                ),
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Color(0xffD0D2D7),
                                  style: BorderStyle.solid,
                                ),
                              ),
                              filled: true,
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontSize: 14.sp,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                              hintText: 'Write a comment...',
                              fillColor:
                                  AppConstant.subtitleColor.withOpacity(0.2),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Image.asset(
                          postIcon,
                          height: 35.h,
                          width: 35.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
