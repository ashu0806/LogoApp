import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:logo_app/app/core/app_constant.dart';
import 'package:logo_app/app/core/image_paths.dart';
import 'package:logo_app/app/modules/feed/views/feed_creation_view.dart';
import 'package:logo_app/app/modules/home/views/comments_view.dart';
import '../controllers/feed_controller.dart';

class FeedView extends GetView<FeedController> {
  const FeedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(
      FeedController(),
    );
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            60.h,
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: AppConstant.subtitleColor,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    feedTopBg,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Text(
              'Logo',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 20.sp,
                    color: AppConstant.appWhite,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.sp,
                color: AppConstant.appWhite,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            actions: [
              IconButton(
                icon: Image.asset(
                  createIcon,
                  height: 20.h,
                  width: 20.w,
                ),
                onPressed: () {
                  Get.to(
                    () => const FeedCreationView(),
                  );
                },
              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator();
            return false;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    index % 2 == 0 ? avatar1 : avatar2,
                                    height: 40.h,
                                    width: 40.w,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index % 2 == 0
                                            ? 'Ankit Rastogi'
                                            : 'Kalpana',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge!
                                            .copyWith(
                                              fontSize: 14.sp,
                                              color: AppConstant.appBlack,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        index % 2 == 0
                                            ? 'posted 30 minutes ago'
                                            : 'posted 5 hours ago',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              fontSize: 11.sp,
                                              color: const Color(0xffFF5B00),
                                              fontWeight: FontWeight.w400,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Image.asset(
                                index % 2 == 0 ? postedImage1 : postedImage2,
                                width: 1.sw,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 15.h,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      index % 2 == 0
                                          ? likeUnselectedIcon
                                          : likeSelectedIcon,
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
                                        index % 2 == 0 ? '105' : '224',
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
                                        index % 2 == 0 ? '10' : '18',
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
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(
                                          () => CommentsView(
                                            avatarAsset: index % 2 == 0
                                                ? avatar1
                                                : avatar2,
                                            name: index % 2 == 0
                                                ? 'Ankit Rastogi'
                                                : 'Kalpana',
                                            postedImageAsset: index % 2 == 0
                                                ? postedImage1
                                                : postedImage2,
                                            likeAsset: index % 2 == 0
                                                ? likeUnselectedIcon
                                                : likeSelectedIcon,
                                            likeCount:
                                                index % 2 == 0 ? '105' : '224',
                                            commentCount:
                                                index % 2 == 0 ? '10' : '18',
                                            caption: index % 2 == 0
                                                ? 'Plantation Activity made fun!'
                                                : 'Fitness check, which team will win?',
                                          ),
                                        );
                                      },
                                      child: Image.asset(
                                        commentIcon,
                                        height: 20.h,
                                        width: 20.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                index % 2 == 0
                                    ? 'Plantation Activity made fun!'
                                    : 'Fitness check, which team will win?',
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
                                height: 20.h,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 0.h,
                          color: AppConstant.appBlack,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ));
  }
}
