import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:viva/screen/model/NewsModel.dart';

class Home_Controller extends GetxController
{

  GlobalKey<FormState> key = GlobalKey<FormState>();
  GlobalKey<FormState> key2 = GlobalKey<FormState>();

  TextEditingController texemail = TextEditingController();
  TextEditingController texpass = TextEditingController();
  TextEditingController texname = TextEditingController();
  TextEditingController texmob = TextEditingController();
  TextEditingController texpass2 = TextEditingController();
  TextEditingController texemail2 = TextEditingController();

  Articles? d2;
}