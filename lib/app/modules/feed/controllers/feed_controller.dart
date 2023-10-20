import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logo_app/app/core/app_constant.dart';
import 'package:logo_app/app/core/config.dart';

class FeedController extends GetxController {
  var loadingStatus = LoadingStatus.loading.obs;

  final _pickedImagePath = ''.obs;
  File? _pickedImage;
  final picker = ImagePicker();

  File? get image => _pickedImage;
  String? get pickedImagePath => _pickedImagePath.value;

  Future getGallery() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      _pickedImage = File(pickedFile.path);
      loadingStatus(LoadingStatus.loading);
      _pickedImagePath.value = pickedFile.path;

      loadingStatus(LoadingStatus.completed);
    } else {
      AppConstant.showSnackbar(
        headText: "Failed",
        content: "No image selected.",
        position: SnackPosition.BOTTOM,
      );
    }
  }

  void setImagePathEmpty() {
    _pickedImagePath.value = '';
  }
}
