import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mohamadjamali/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mohamadjamali/views/products_view.dart';

class DetailproductView extends StatelessWidget {
  String tag;

  DetailproductView({super.key, required this.tag});

  final NumberFormat numberFormat = NumberFormat.decimalPattern('fa');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.w, top: 25.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () async {
                    await Get.to(ProductsView());
                  },
                  child: Container(
                    width: 79.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFB9D1D7),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.solarLogout2Outline
                              .image(width: 17.w, height: 17.h),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'خروج',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 15.sp),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            Hero(
              tag: tag,
              child: Padding(
                padding: EdgeInsets.only(top: 50, left: 200.w),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0183FF)),
                    onPressed: () {},
                    child: Text(
                      'دسته بازی',
                      style: TextStyle(fontSize: 18.sp, color: Colors.white),
                    )),
              ),
            ),
            Text(
              'XBOX  دسته بازی مخصوص ',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35.w),
                  child: Text(
                    'تومان',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Flexible(
                  child: Text(
                    numberFormat.format(500000),
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.h),
                  child: Column(
                    children: [
                      Assets.images.bxsUpArrowAlt
                          .image(width: 24.w, height: 24.h),
                      conti(Color(0xFF0183FF)),
                      conti(Colors.white),
                      conti(Colors.white),
                      Transform.rotate(
                          angle: 3.14,
                          child: Assets.images.bxsUpArrowAlt.image(
                            width: 24.w,
                            height: 24.h,
                          )),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(130.w, 0),
                  child: SizedBox(
                    width: 300.w,
                    height: 300.h,
                    child: ClipRRect(
                        child: Assets.images.controller.image(
                      width: 377.w,
                      height: 377.h,
                    )),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'توضیحات',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ShaderMask(
                shaderCallback: (Rect rect) {
                  return LinearGradient(colors: [
                    Color.fromRGBO(103, 103, 103, 1),
                    Color.fromRGBO(103, 103, 103, 0),
                  ]).createShader(rect);
                },
                child: Text(
                  'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم\n از صنعت چاپ، و با استفاده از طراحان گرافیک است،\n چاپگرها و متون',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50.w),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '+بیشتر',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13.sp, color: Color(0xFF0183FF)),
                  )),
            ),
            SizedBox(
              height: 43.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                conti2(Colors.black, 30, 30),
                conti2(Color(0xFFFFD707), 44, 44),
                conti2(Color(0xFF0183FF), 30, 30),
                conti2(Colors.white, 30, 30),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 40.w),
                  child: Text(
                    'انتخاب رنگ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(329, 57),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    backgroundColor: Color(0xFF0183FF)),
                onPressed: () {},
                child: Text(
                  'افزودن به سبد خرید',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
      backgroundColor: Color(0xFFE1E8EA),
    );
  }

  Widget conti(Color color) {
    return Container(
      margin: EdgeInsets.all(4),
      width: 10.w,
      height: 10.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  Widget conti2(Color color, double widcircle, double heighccircle) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Container(
        margin: EdgeInsets.all(2),
        width: widcircle,
        height: heighccircle,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
