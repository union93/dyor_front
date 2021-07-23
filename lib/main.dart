import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(dyorApp());
}


class dyorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     theme: ThemeData(

     ),
     debugShowCheckedModeBanner: false,
     initialRoute: "/",
   );



  }


}

