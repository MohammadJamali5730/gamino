import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mohamadjamali/models/signup_model.dart';

class SignupController {
  Future<bool> getregisterapi(
      {required String email, required String password}) async {
    try {
      SignupModel signupModel = SignupModel(email: email, password: password);

      final response = await http.post(
        Uri.parse('https://reqres.in/api/register'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(signupModel.toMap()),
      );

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        Get.snackbar('موفقیت', 'ثبت‌نام موفق! Token: ${result['token']}',
            backgroundColor: Colors.green, snackPosition: SnackPosition.BOTTOM);
        return true;
      } else {
        Get.snackbar(
          'خطای ناشناخته',
          'مشکلی پیش آمده است. لطفاً دوباره تلاش کنید.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        return false;
      }
    } catch (e) {
      print('خطای غیرمنتظره: $e');
      return false;
    }
  }
}
