import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Flash_View extends StatefulWidget {
  const Flash_View({Key? key}) : super(key: key);

  @override
  State<Flash_View> createState() => _Flash_ViewState();
}

class _Flash_ViewState extends State<Flash_View> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() {
      Get.toNamed('sigin');
    },);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueAccent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("asset/image/intro.png"),
                SizedBox(height: 30,),
                Text("Offline News",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                SizedBox(height: 30,),
                CircularProgressIndicator(
                  backgroundColor: Colors.white,
                )
              ],
            ),
          ),
        )
    );
  }
}
