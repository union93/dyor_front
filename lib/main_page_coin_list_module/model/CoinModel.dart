class CoinModel {
  CoinModel(
  {
    this.coinName,
    this.data1,
    this.data2,
    this.data3,
    this.data4,
    this.data5,
  });

  String coinName;
  int data1;
  int data2;
  int data3;
  int data4;
  int data5;

  factory CoinModel.fromJson(Map<String, dynamic> json) => CoinModel(
    data1: json["data1"],
    data2: json["data2"],
    data3: json["data3"],
    data4: json["data4"],
    data5: json["data5"],
    coinName: json["coinName"]
  );

  Map<String, dynamic> toJson() =>{
    "data1": data1,
    "data2": data2,
    "data3": data3,
    "data4": data4,
    "data5": data5,
    "coinName": coinName,
  };

}
