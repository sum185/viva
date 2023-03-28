import 'package:flutter/material.dart';
import 'package:viva/screen/controller/home_controller/home_controller.dart';
import 'package:get/get.dart';
class Data_Vview extends StatefulWidget {
  const Data_Vview({Key? key}) : super(key: key);

  @override
  State<Data_Vview> createState() => _Data_VviewState();
}

class _Data_VviewState extends State<Data_Vview> {
  Home_Controller home_controller = Get.put(Home_Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Data",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    color: Colors.red,
                    child: Image.network('${home_controller.d2!.urlToImage}',fit: BoxFit.fill,),
                  ),
                  SizedBox(height: 30,),
                  Text("${home_controller.d2!.title}",style: TextStyle(color: Colors.black,fontSize: 18),)
                ],
              ),
            ),
          ),
    ));
  }
}
