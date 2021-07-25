/// mainpage_pairs : [{"reserveUSD":14136734.610690074,"token0":"LON","token1":"WETH","volumeUSD":97918.59387276415},{"reserveUSD":14183420.490658151,"token0":"HEX","token1":"USDC","volumeUSD":1950578.092020204},{"reserveUSD":14566663.99182423,"token0":"WETH","token1":"renBTC","volumeUSD":94550.119842614},{"reserveUSD":14849824.945862355,"token0":"mSLV","token1":"UST","volumeUSD":6339.79986572394},{"reserveUSD":14870229.507170392,"token0":"PAXG","token1":"PAX","volumeUSD":13234.373954889865},{"reserveUSD":14999413.419991061,"token0":"DBL","token1":"BLUE","volumeUSD":"null"},{"reserveUSD":15078600.695663637,"token0":"mIAU","token1":"UST","volumeUSD":"null"},{"reserveUSD":15095993.913543407,"token0":"mAMZN","token1":"UST","volumeUSD":4842.430444046467},{"reserveUSD":15226654.907802043,"token0":"mGOOGL","token1":"UST","volumeUSD":"null"},{"reserveUSD":15287363.04109751,"token0":"XXi","token1":"WETH","volumeUSD":"null"},{"reserveUSD":15464172.430705331,"token0":"PAX","token1":"WETH","volumeUSD":1548782.8689485216},{"reserveUSD":17849352.609758943,"token0":"WETH","token1":"FOX","volumeUSD":434237.69433043734},{"reserveUSD":18275093.095298816,"token0":"⚗️","token1":"WETH","volumeUSD":"null"},{"reserveUSD":18397961.288995493,"token0":"MIR","token1":"UST","volumeUSD":426297.52958109113},{"reserveUSD":19136197.762836974,"token0":"PAXG","token1":"WETH","volumeUSD":94983.42014321675},{"reserveUSD":20112621.240732286,"token0":"CARDS","token1":"WETH","volumeUSD":80685.56866957541},{"reserveUSD":20148796.568255194,"token0":"ETH2POS","token1":"DC","volumeUSD":"null"},{"reserveUSD":24772481.27052215,"token0":"wANATHA","token1":"WETH","volumeUSD":"null"},{"reserveUSD":24963086.654956337,"token0":"BOND","token1":"USDC","volumeUSD":300.83280385652347},{"reserveUSD":25029006.724150717,"token0":"SAND","token1":"WETH","volumeUSD":6283566.6208343385},{"reserveUSD":26337659.341524594,"token0":"RK:ETH","token1":"ROOT","volumeUSD":"null"},{"reserveUSD":27528177.121533286,"token0":"AAVE","token1":"WETH","volumeUSD":366098.94950254034},{"reserveUSD":28640374.899436384,"token0":"WETH","token1":"HEZ","volumeUSD":11079.19500823105},{"reserveUSD":29354224.139690727,"token0":"FRAX","token1":"WETH","volumeUSD":365354.3161626794},{"reserveUSD":29916175.83501247,"token0":"RAI","token1":"WETH","volumeUSD":65752.6501215189},{"reserveUSD":30489305.95703035,"token0":"DELTA","token1":"WETH","volumeUSD":"null"},{"reserveUSD":31781712.32649677,"token0":"MKR","token1":"WETH","volumeUSD":217009.0625382029},{"reserveUSD":32401702.949598994,"token0":"FNK","token1":"USDT","volumeUSD":67209.52739799856},{"reserveUSD":33542780.772398833,"token0":"FXS","token1":"FRAX","volumeUSD":184632.08571852164},{"reserveUSD":35521087.49918661,"token0":"WETH","token1":"wPE","volumeUSD":8547.806955718792},{"reserveUSD":35850540.42144764,"token0":"WDOGE","token1":"WETH","volumeUSD":"null"},{"reserveUSD":37039843.134982444,"token0":"DPI","token1":"WETH","volumeUSD":330504.07424349553},{"reserveUSD":41550989.81142609,"token0":"LINK","token1":"WETH","volumeUSD":545415.8899244809},{"reserveUSD":41619914.290797755,"token0":"USDC","token1":"USDT","volumeUSD":682508.641836},{"reserveUSD":47494074.52558083,"token0":"MT","token1":"ACR","volumeUSD":0.1561443999444849},{"reserveUSD":56333741.5081038,"token0":"DAI","token1":"USDC","volumeUSD":13740.506053113795},{"reserveUSD":65563953.40366158,"token0":"FRAX","token1":"USDC","volumeUSD":11619.900276297569},{"reserveUSD":73200509.24759907,"token0":"DAI","token1":"WETH","volumeUSD":2133265.447353235},{"reserveUSD":83373760.79510424,"token0":"UNI","token1":"WETH","volumeUSD":11.923495606898056},{"reserveUSD":99481318.77436909,"token0":"HKMT","token1":"USDT","volumeUSD":"null"},{"reserveUSD":120800246.00839825,"token0":"M2","token1":"wPE","volumeUSD":"null"},{"reserveUSD":132386563.70523995,"token0":"WBTC","token1":"WETH","volumeUSD":773862.66024335},{"reserveUSD":215758565.07171223,"token0":"WISE","token1":"WETH","volumeUSD":19370.96721107225},{"reserveUSD":228097329.3397173,"token0":"WETH","token1":"USDT","volumeUSD":10502773.301107323},{"reserveUSD":261158517.84735912,"token0":"USDC","token1":"WETH","volumeUSD":9837601.599328},{"reserveUSD":312106790.52481776,"token0":"FEI","token1":"WETH","volumeUSD":3834259.571471079},{"reserveUSD":321725572.85080534,"token0":"FEI","token1":"TRIBE","volumeUSD":134072.73602821643},{"reserveUSD":393177871.42707473,"token0":"HANU","token1":"MIA","volumeUSD":"null"},{"reserveUSD":398915486.20543516,"token0":"HANU","token1":"GOJ","volumeUSD":"null"},{"reserveUSD":1743372228.4526973,"token0":"UETH","token1":"ULCK","volumeUSD":"null"}]

class MainPagePairs {
  List<Mainpage_pairs> _mainpagePairs;

  List<Mainpage_pairs> get mainpagePairs => _mainpagePairs;

  MainPagePairs({
      List<Mainpage_pairs> mainpagePairs}){
    _mainpagePairs = mainpagePairs;
}

  MainPagePairs.fromJson(dynamic json) {
    if (json["mainpage_pairs"] != null) {
      _mainpagePairs = [];
      json["mainpage_pairs"].forEach((v) {
        _mainpagePairs.add(Mainpage_pairs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_mainpagePairs != null) {
      map["mainpage_pairs"] = _mainpagePairs.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// reserveUSD : 14136734.610690074
/// token0 : "LON"
/// token1 : "WETH"
/// volumeUSD : 97918.59387276415

class Mainpage_pairs {
  double _reserveUSD;
  String _token0;
  String _token1;
  double _volumeUSD;

  double get reserveUSD => _reserveUSD;
  String get token0 => _token0;
  String get token1 => _token1;
  double get volumeUSD => _volumeUSD;

  Mainpage_pairs({
      double reserveUSD, 
      String token0, 
      String token1, 
      double volumeUSD}){
    _reserveUSD = reserveUSD;
    _token0 = token0;
    _token1 = token1;
    _volumeUSD = volumeUSD;
}

  Mainpage_pairs.fromJson(dynamic json) {
    _reserveUSD = json["reserveUSD"];
    _token0 = json["token0"];
    _token1 = json["token1"];
    _volumeUSD = json["volumeUSD"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["reserveUSD"] = _reserveUSD;
    map["token0"] = _token0;
    map["token1"] = _token1;
    map["volumeUSD"] = _volumeUSD;
    return map;
  }

}