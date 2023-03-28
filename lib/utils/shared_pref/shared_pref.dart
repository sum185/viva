import 'package:shared_preferences/shared_preferences.dart';


void CreateShr(String email,String password)async{
   SharedPreferences shr = await SharedPreferences.getInstance();
   shr.setString("e1", email);
   shr.setString("p1", password);
 }

Future<String?> readEmailPref()async{
   SharedPreferences shr = await SharedPreferences.getInstance();
   String? email = shr.getString("e1");
   return email;
 }

 Future<String?> readPasseordPref()async{
   SharedPreferences shr = await SharedPreferences.getInstance();
   String? password = shr.getString("p1");
   return password;
 }

void IsLogin(bool log)async{
   SharedPreferences shr = await SharedPreferences.getInstance();
   shr.setBool("l1", log);
 }
