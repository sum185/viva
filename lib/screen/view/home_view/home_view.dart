import 'package:flutter/material.dart';
import 'package:viva/screen/controller/home_controller/home_controller.dart';
import 'package:viva/screen/model/NewsModel.dart';
import 'package:viva/utils/api_helper/api_helper.dart';
import 'package:get/get.dart';
class Home_View extends StatefulWidget {
  const Home_View({Key? key}) : super(key: key);

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  Home_Controller home_controller = Get.put(Home_Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text("News",style: TextStyle(color: Colors.white),),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 600,
                    width: double.infinity,
                    child: FutureBuilder<NewsModel?>(
                      future: Api_Helper.api_helper.getApi(),
                      builder: (context, snapshot) {
                        if(snapshot.hasError){
                          return Text("${snapshot.error}");
                        }
                        else if(snapshot.hasData){
                          List<Articles>? d1 = snapshot!.data!.articles;
                          return ListView.builder(itemCount: d1!.length,itemBuilder: (context, index) {
                            return ListTile(
                              title: Text("${d1[index].title}",style: TextStyle(color: Colors.black),),
                              leading: Container(
                                height: 300,
                                width: 100,
                                color: Colors.red,
                                child: InkWell(
                                    onTap: (){
                                      home_controller.d2= d1[index];
                                      Get.toNamed('data');
                                    },
                                    child: Image.network("${d1[index].urlToImage}",fit: BoxFit.cover,)),
                              ),
                            );
                          },);
                        }
                        return Center(child: CircularProgressIndicator());
                    },),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
