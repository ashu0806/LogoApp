import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:logo_app/app/core/image_paths.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(
      SplashController(),
    );
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Image.asset(
          splashBg,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
