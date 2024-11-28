import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mohamadjamali/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mohamadjamali/views/detailproduct_view.dart';

class ProductsView extends StatelessWidget {
  ProductsView({super.key});
  final NumberFormat numberFormat = NumberFormat.decimalPattern('fa');
  String tag = 'tag';
  List products = [
    Assets.images.controller.image(width: 105.61.w, height: 105.61.h),
    Assets.images.tv.image(width: 105.61.w, height: 105.61.h),
    Assets.images.mobile.image(width: 105.61.w, height: 105.61.h),
    Assets.images.smartWatch.image(width: 105.61.w, height: 105.61.h),
    Assets.images.smartWatch.image(width: 105.61.w, height: 105.61.h),
    Assets.images.controller.image(width: 105.61.w, height: 105.61.h)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              children: [
                Hero(
                  tag: tag,
                  child: InkWell(
                    onTap: () {
                      logout();
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
              ],
            ),
          ),
          Assets.images.logo.image(width: 199.w, height: 109.h),
          Text(
            'فروشگاه ',
            style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w900),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () async {
                await Get.to(DetailproductView(tag: tag));
              },
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 153.w,
                        height: 143.h,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 12,
                                  offset: Offset(0, 4))
                            ],
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                      ),
                      Column(
                        children: [
                          Transform.translate(
                              offset: Offset(0, -20.h), child: products[index]),
                          Transform.translate(
                            offset: Offset(0, -6.h),
                            child: Text(
                              'XBOX  دسته بازی ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Transform.translate(
                            offset: Offset(0, -6.h),
                            child: Padding(
                              padding: EdgeInsets.only(left: 30.w),
                              child: Text.rich(
                                  textAlign: TextAlign.center,
                                  TextSpan(children: [
                                    TextSpan(
                                      text: numberFormat.format(500000),
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: Transform.translate(
                                        offset: Offset(-45.w, 10.h),
                                        child: Text(
                                          ' تومان',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ])),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFE1E8EA),
    );
  }

  void logout() async {
    final box = GetStorage();
    await box.erase();
    await box.write('isLoggedIn', false);
    Get.offAllNamed('/home');
  }
}
