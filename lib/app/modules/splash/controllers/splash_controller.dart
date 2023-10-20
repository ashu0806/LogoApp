import 'package:get/get.dart';
import 'package:logo_app/app/core/config.dart';
import 'package:logo_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    /*we can use Uuid package to create a unique Id and store it in app using 
    flutter_secure_storage and we check to redirect to login or dashboard*/
    final userTokenId = await Config.flutterSecureStorage.read(
      key: Config.userTokenId,
    );
    if (userTokenId == null) {
      Future.delayed(
        const Duration(milliseconds: 1000),
        () {
          Get.offNamedUntil(
            Routes.AUTH,
            (route) => false,
          );
        },
      );
    } else {
      Future.delayed(
        const Duration(milliseconds: 1000),
        () {
          Get.offNamedUntil(
            Routes.HOME,
            (route) => false,
          );
        },
      );
    }

    super.onInit();
  }
}
