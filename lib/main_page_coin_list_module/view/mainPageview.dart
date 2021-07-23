import 'package:flutter/cupertino.dart';
import 'package:dyor_front/main_page_coin_list_module/controller/ListController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageView extends StatelessWidget {

  List<String> coinTableRows;
  List<String> coinTableHeading;

  final controller = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("DYOR")
      )
    );
  }




}