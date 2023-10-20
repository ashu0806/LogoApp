import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum LoadingStatus {
  loading,
  completed,
  error,
}

class Config {
  static String userTokenId = "userTokenId";
  static FlutterSecureStorage flutterSecureStorage =
      const FlutterSecureStorage();
}
