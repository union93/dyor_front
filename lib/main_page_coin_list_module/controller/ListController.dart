import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:dyor_front/main_page_coin_list_module/model/CoinModel.dart';

class ListController extends GetxController{

  var coinList = List<CoinModel>().obs;
  void onInit() {
    fetchCoinList();
    super.onInit();
  }
  Future<CoinModel> fetchCoinList() async {
    final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    if (response.statusCode ==200 ){
      return CoinModel.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('코인정보 로딩에 실패했습니다.');
    }
  }
}

class Listgenerator extends GetxController{




}


