import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final mobileNumberController = TextEditingController();
  final passwordController = TextEditingController();
}
