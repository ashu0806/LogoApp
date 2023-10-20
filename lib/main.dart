import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
// import 'package:logo_app/app/core/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /* Due to the poor image quality on the splash , I am not using flutter_native_splash */
  // await Future.delayed(
  //   const Duration(seconds: 1),
  //   () {
  //     FlutterNativeSplash.remove();
  //   },
  // );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        360,
        690,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: "Logo App",
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  }
}



//  systemOverlayStyle: const SystemUiOverlayStyle(
//       statusBarColor: AppConstant.subtitleColor,
//       statusBarIconBrightness: Brightness.light,
//       statusBarBrightness: Brightness.light,
//     ),