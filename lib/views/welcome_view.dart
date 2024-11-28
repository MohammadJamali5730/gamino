import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohamadjamali/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 54.h),
                child: Assets.images.mainIMG.image(width: 390.w, height: 448.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Assets.images.logo.image(height: 109.w, width: 199.h),
              ),
              Text(
                'فروشگاه گیمینو',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40.sp,
                    color: Colors.black),
              ),
              SizedBox(
                height: 17.h,
              ),
              Text(
                'فروشگاه تخصصی لوازم بازی های رایانه ای و\n کنسول بازی',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, color: Color(0xFF676767)),
              ),
              SizedBox(
                height: 39.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(329, 57),
                      backgroundColor: const Color(0xFF0183FF)),
                  onPressed: () {
                    Get.toNamed('/signup');
                  },
                  child: Text(
                    'ایجاد حساب کاربری',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  )),
              TextButton(
                  onPressed: () async {
                    await Get.toNamed('/login');
                  },
                  child: Text(
                    'قبلا ثبت نام کرده ام',
                    style: TextStyle(
                        color: const Color(0xff8A8A8A),
                        fontSize: 14.sp,
                        decoration: TextDecoration.underline),
                  ))
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFDCE3FF),
    );
  }
}
