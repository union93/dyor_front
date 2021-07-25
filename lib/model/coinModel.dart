class Coin {
  final String name;
  final String symbol;
  final double current_price;
  final double market_cap;
  final double market_cap_change_percentage_24h;
  final double price_change_percentage_24h;
  final int total_volume;

  Coin(
  {
    this.name,
    this.symbol,
    this.current_price,
    this.market_cap,
    this.market_cap_change_percentage_24h,
    this.price_change_percentage_24h,
    this.total_volume

  });

  factory Coin.fromJson(Map<String, dynamic> json){
    return Coin(
        name: json['name'],
        symbol: json['symbol'],
        current_price: json['current_price'],
        market_cap: json['market_cap'],
        market_cap_change_percentage_24h: json['market_cap_change_percentage_24h'],
        price_change_percentage_24h: json['price_change_percentage_24h'],
        total_volume: json['total_volume'],
    );
  }
}