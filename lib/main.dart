import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viva/screen/view/data_view/data_view.dart';
import 'package:viva/screen/view/flash_view/flash_view.dart';
import 'package:viva/screen/view/home_view/home_view.dart';
import 'package:viva/screen/view/sigin_view/sigin_view.dart';
import 'package:viva/screen/view/signup_view/signup_view.dart';
void main()
{
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: 'flash',
      routes: {
        'flash':(p0) => Flash_View(),
        'sigin':(p0) => Signin_view(),
        'signup':(p0) => SignUp_View(),
        'home':(p0) => Home_View(),
        'data':(p0) => Data_Vview()
      },
    )
  );
}