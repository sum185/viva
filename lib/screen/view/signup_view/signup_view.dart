import 'package:flutter/material.dart';
import 'package:viva/screen/controller/home_controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:viva/utils/shared_pref/shared_pref.dart';
class SignUp_View extends StatefulWidget {
  const SignUp_View({Key? key}) : super(key: key);

  @override
  State<SignUp_View> createState() => _SignUp_ViewState();
}

class _SignUp_ViewState extends State<SignUp_View> {
  Home_Controller home_controller = Get.put(Home_Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
          key: home_controller.key2,
          child: Scaffold(
            backgroundColor: Colors.blueAccent,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: home_controller.texname,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            hintText: "Enter the name",
                            hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            suffixIcon: Icon(Icons.person,color: Colors.white,)
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter user name";
                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: home_controller.texmob,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            hintText: "Enter mobile no",
                            hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            suffixIcon: Icon(Icons.person,color: Colors.white,)
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "please enter mobile no";
                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: home_controller.texemail2,
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
                            return "Please enter your email";
                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: home_controller.texpass2,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                            hintText: "Enter the password",
                            hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            suffixIcon: Icon(Icons.person,color: Colors.white,)
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter your password";
                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        if(home_controller.key2.currentState!.validate()){
                          CreateShr(home_controller.texemail2.text, home_controller.texpass2.text);
                          Get.back();
                        }
                        else{
                          Get.snackbar("Failed", "Enter Username Or Password");
                        }
                      }, child: Text("Sign Up")),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have a account",style: TextStyle(color: Colors.white,fontSize: 20),),
                          TextButton(onPressed: (){
                            Get.back();
                          }, child: Text("Sign in",style: TextStyle(color: Colors.yellow,fontSize: 20,decoration: TextDecoration.underline),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
