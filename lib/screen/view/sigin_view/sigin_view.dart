import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viva/screen/controller/home_controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:viva/utils/shared_pref/shared_pref.dart';
class Signin_view extends StatefulWidget {
  const Signin_view({Key? key}) : super(key: key);

  @override
  State<Signin_view> createState() => _Signin_viewState();
}

class _Signin_viewState extends State<Signin_view> {
  Home_Controller home_controller = Get.put(Home_Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
          key: home_controller.key,
          child: Scaffold(
            backgroundColor: Colors.blueAccent,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: home_controller.texemail,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      suffixIcon: Icon(Icons.person,color: Colors.white,)
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter the email";
                      }
                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: home_controller.texpass,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        suffixIcon: Icon(Icons.lock,color: Colors.white,)
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please enter the password";
                      }
                    },
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: () async {

                    String? e1 = await readEmailPref();
                    String? p1 = await readPasseordPref();

                    if(home_controller.key.currentState!.validate()){
                      if(e1!=home_controller.texemail.text || p1!=home_controller.texpass.text){
                        Get.snackbar("Error", "Wrong Email or Password");
                      }
                      else {
                        IsLogin(true);
                        Get.offNamed('home');
                      }
                    }
                    else{
                      Get.snackbar("Failed", "Pleas enter the email or password");
                    }
                  }, child: Text("Sign in")),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create new account",style: TextStyle(color: Colors.white,fontSize: 20),),
                      TextButton(onPressed: (){
                        Get.toNamed('signup');
                      }, child: Text("Sign up",style: TextStyle(color: Colors.yellow,fontSize: 20,decoration: TextDecoration.underline,),))
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}






