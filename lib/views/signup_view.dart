import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mohamadjamali/controllers/signup_controller.dart';
import 'package:mohamadjamali/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70.h),
              child: Assets.images.logo.image(width: 199.w, height: 109.h),
            ),
            Assets.images.loginIMG.image(
              width: 312.w,
              height: 226.h,
            ),
            SizedBox(
              height: 15.h,
            ),
            Align(
                alignment: const Alignment(0.65, -0.3),
                child: Transform.translate(
                  offset: const Offset(0, 10),
                  child: const Text(
                    'ایمیل',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                )),
            SizedBox(
              height: 14.h,
            ),
            buildtextfield('Info@example.com', emailcontroller),
            SizedBox(
              height: 8.h,
            ),
            Align(
                alignment: const Alignment(0.65, 0),
                child: Transform.translate(
                  offset: const Offset(0, 10),
                  child: const Text(
                    'رمز عبور',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                )),
            SizedBox(
              height: 14,
            ),
            buildtextfield(
                'رمز عبور دلخواه حداقل 5 کاراکتر', passwordcontroller),
            SizedBox(
              height: 41.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(277.w, 45.h),
                    backgroundColor: const Color(0xFF0183FF)),
                onPressed: () async {
                  bool issuccess = await Get.put(SignupController())
                      .getregisterapi(
                          email: emailcontroller.text,
                          password: passwordcontroller.text);

                  if (issuccess) {
                    signup();
                  }
                },
                child: Text(
                  'ثبت نام',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                )),
            TextButton(
                onPressed: () {
                  Get.toNamed('/login');
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
      backgroundColor: const Color(0xFFDCE3FF),
    );
  }

  Widget buildtextfield(String hint, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.only(left: 58.w, right: 58.w),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(100))),
      ),
    );
  }

  void signup() async {
    final box = GetStorage();

    await box.write('isLoggedIn', true);
    Get.offAllNamed('/login');
  }
}
