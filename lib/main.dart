import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mohamadjamali/views/detailproduct_view.dart';
import 'package:mohamadjamali/views/login_view.dart';
import 'package:mohamadjamali/views/products_view.dart';
import 'package:mohamadjamali/views/signup_view.dart';
import 'package:mohamadjamali/views/welcome_view.dart';

void main() async{
   await GetStorage.init();
   final box = GetStorage();
  bool isLoggedIn = box.read('isLoggedIn') ?? false;
  runApp( MyApp(isLoggedIn: isLoggedIn,));
}
class MyApp extends StatelessWidget {
  final bool isLoggedIn;
   MyApp({super.key,required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        initialRoute: isLoggedIn ? '/products' : '/home',
        getPages: [
          GetPage(name: '/home', page: () => WelcomeView()),
          GetPage(name: '/signup', page: () => SignupView()),
          GetPage(name: '/login', page: () => LoginView()),
          GetPage(name: '/products', page: () => ProductsView()),
          GetPage(name: '/deatails', page: () => DetailproductView(tag: '',)),
        ],
        theme: ThemeData(
            textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Yekan')),
        debugShowCheckedModeBanner: false,
        
      ),
    );
  }
}
