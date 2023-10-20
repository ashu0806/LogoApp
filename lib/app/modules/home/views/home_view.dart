import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:logo_app/app/core/app_constant.dart';
import 'package:logo_app/app/core/config.dart';
import 'package:logo_app/app/core/image_paths.dart';
import 'package:logo_app/app/modules/home/views/comments_view.dart';
import 'package:logo_app/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(
      HomeController(),
    );
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          190.h,
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
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  homeTopBg,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  12.r,
                ),
                bottomRight: Radius.circular(
                  12.r,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top + 80.h,
                  ),
                  Text(
                    "Upcoming Events",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 18.sp,
                          color: AppConstant.appWhite,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 65.h,
                    width: 1.sw,
                    decoration: BoxDecoration(
                      color: AppConstant.appWhite,
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 15.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Session: Ice Breaker Games Activity",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 13.sp,
                                  color: AppConstant.appBlack,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                calendarIcon,
                                height: 13.h,
                                width: 13.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "5 Jan | 1.00 PM - 1.30 PM",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      fontSize: 12.sp,
                                      color: AppConstant.secondaryColor,
                                      fontWeight: FontWeight.w400,
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
              Icons.menu,
              size: 26.sp,
              color: AppConstant.appWhite,
            ),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
          ),
          actions: [
            const Icon(
              Icons.notifications_outlined,
            ),
            SizedBox(
              width: 20.w,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        width: 1.sw,
        backgroundColor: AppConstant.secondaryColor,
        child: DrawerHeader(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15.h,
                  horizontal: 25.w,
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 20.w,
                    ),
                    Center(
                      child: Text(
                        'Logo',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 20.sp,
                                  color: AppConstant.appWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        scaffoldKey.currentState?.closeDrawer();
                      },
                      child: Icon(
                        Icons.close,
                        size: 24.sp,
                        color: AppConstant.appWhite,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.offNamedUntil(
                    Routes.HOME,
                    (route) => false,
                  );
                },
                child: Text(
                  'Home',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        color: AppConstant.appWhite,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(
                    Routes.FEED,
                  );
                },
                child: Text(
                  'Feed',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        color: AppConstant.appWhite,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              const Spacer(),
              Divider(
                thickness: 1.w,
                color: AppConstant.subtitleColor,
              ),
              GestureDetector(
                onTap: () async {
                  await Config.flutterSecureStorage.write(
                    key: Config.userTokenId,
                    value: null,
                  );
                  Get.offNamedUntil(
                    Routes.AUTH,
                    (route) => false,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 24.sp,
                      color: AppConstant.appWhite,
                    ),
                    Text(
                      'Logout',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 15.sp,
                                color: AppConstant.appWhite,
                                fontWeight: FontWeight.w300,
                              ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  viewportFraction: 1,
                  aspectRatio: 2,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(
                    seconds: 2,
                  ),
                  autoPlayAnimationDuration: const Duration(
                    milliseconds: 800,
                  ),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {},
                ),
                itemCount: controller.listOfBanners.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            controller.listOfBanners[itemIndex],
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured Speakers',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 16.sp,
                                color: AppConstant.appBlack,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      // height: 100.h,
                      width: 1.sw,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppConstant.appWhite,
                        borderRadius: BorderRadius.circular(
                          8.r,
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Image.asset(
                                  speakerAvatar,
                                  height: 50.h,
                                  width: 50.w,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Alisha Shikhar",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                        fontSize: 12.sp,
                                        color: AppConstant.appBlack,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  "Yoga Expert",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                        fontSize: 11.sp,
                                        color: AppConstant.appBlack,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
                            child: SizedBox(
                              height: 80.h,
                              child: VerticalDivider(
                                width: 1.w,
                                thickness: 1.w,
                                color: AppConstant.subtitleColor,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Session: Way to a Calm Mind",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                        fontSize: 13.sp,
                                        color: AppConstant.appBlack,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      calendarIcon,
                                      height: 13.h,
                                      width: 13.w,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      "5 Jan | 1.00 PM - 1.30 PM",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge!
                                          .copyWith(
                                            fontSize: 12.sp,
                                            color: AppConstant.secondaryColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Text(
                  "What's Happening Around you!",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        color: AppConstant.appBlack,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 20.h,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
    );
  }
}
