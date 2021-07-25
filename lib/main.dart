import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dyor_front/simple_animations_package.dart';
import 'package:json_table/json_table.dart';
import 'package:dyor_front/view/secondPage.dart';

void main() => runApp(ParticleApp());

String mainpage_tokken ='[{"current_price":1.0,"market_cap":62084504942.0,"market_cap_change_percentage_24h":-0.04712,"name":"Tether","price_change_percentage_24h":-0.04712,"symbol":"usdt","total_volume":47691333150},{"current_price":33977.0,"market_cap":637659530541.0,"market_cap_change_percentage_24h":0.25707,"name":"Bitcoin","price_change_percentage_24h":0.12357,"symbol":"btc","total_volume":20873478853},{"current_price":2113.45,"market_cap":246991650864.0,"market_cap_change_percentage_24h":-2.30876,"name":"Ethereum","price_change_percentage_24h":-2.66474,"symbol":"eth","total_volume":18194848431},{"current_price":1.0,"market_cap":11801206646.0,"market_cap_change_percentage_24h":1.27701,"name":"Binance USD","price_change_percentage_24h":-0.14493,"symbol":"busd","total_volume":3964131060},{"current_price":46.2,"market_cap":5948701423.0,"market_cap_change_percentage_24h":1.32652,"name":"Ethereum Classic","price_change_percentage_24h":1.28241,"symbol":"etc","total_volume":3502708186},{"current_price":39.58,"market_cap":2187261502.0,"market_cap_change_percentage_24h":-17.91645,"name":"Axie Infinity","price_change_percentage_24h":-17.94565,"symbol":"axs","total_volume":3366501786},{"current_price":443.85,"market_cap":8344468903.0,"market_cap_change_percentage_24h":-2.87852,"name":"Bitcoin Cash","price_change_percentage_24h":-2.89573,"symbol":"bch","total_volume":2946834343},{"current_price":0.03291528,"market_cap":16457639.0,"market_cap_change_percentage_24h":0.89534,"name":"ZBG Token","price_change_percentage_24h":0.45591,"symbol":"zt","total_volume":2735245668},{"current_price":0.152185,"market_cap":0.0,"market_cap_change_percentage_24h":0.0,"name":"DKK Token","price_change_percentage_24h":-0.59297,"symbol":"dkkt","total_volume":1939206726},{"current_price":0.194565,"market_cap":25407515721.0,"market_cap_change_percentage_24h":0.07448,"name":"Dogecoin","price_change_percentage_24h":0.00837,"symbol":"doge","total_volume":1795734553},{"current_price":1.0,"market_cap":27078978094.0,"market_cap_change_percentage_24h":0.16297,"name":"USD Coin","price_change_percentage_24h":-0.04236,"symbol":"usdc","total_volume":1647609316},{"current_price":0.593652,"market_cap":27465495034.0,"market_cap_change_percentage_24h":-2.47361,"name":"XRP","price_change_percentage_24h":-2.6278,"symbol":"xrp","total_volume":1518765213},{"current_price":0.00256031,"market_cap":0.0,"market_cap_change_percentage_24h":0.0,"name":"ABC Chain","price_change_percentage_24h":-0.15015,"symbol":"abc","total_volume":1470178384},{"current_price":293.89,"market_cap":45492069534.0,"market_cap_change_percentage_24h":-2.89051,"name":"Binance Coin","price_change_percentage_24h":-3.18519,"symbol":"bnb","total_volume":1316604976},{"current_price":124.21,"market_cap":8291577157.0,"market_cap_change_percentage_24h":-1.16592,"name":"Litecoin","price_change_percentage_24h":-1.16599,"symbol":"ltc","total_volume":1314521828},{"current_price":30.56,"market_cap":200865916.0,"market_cap_change_percentage_24h":28.67219,"name":"Augur","price_change_percentage_24h":27.94958,"symbol":"rep","total_volume":1095813725},{"current_price":1.2,"market_cap":38455708169.0,"market_cap_change_percentage_24h":-0.81746,"name":"Cardano","price_change_percentage_24h":-1.35417,"symbol":"ada","total_volume":1022739701},{"current_price":0.704389,"market_cap":495999574.0,"market_cap_change_percentage_24h":-13.30742,"name":"The Sandbox","price_change_percentage_24h":-13.54009,"symbol":"sand","total_volume":908929408},{"current_price":3.56,"market_cap":3425758272.0,"market_cap_change_percentage_24h":-2.31825,"name":"EOS","price_change_percentage_24h":-2.52327,"symbol":"eos","total_volume":907247251},{"current_price":6.22,"market_cap":6216556686.0,"market_cap_change_percentage_24h":12.2671,"name":"Theta Network","price_change_percentage_24h":11.68127,"symbol":"theta","total_volume":866365023},{"current_price":0.05732,"market_cap":4109363614.0,"market_cap_change_percentage_24h":1.07486,"name":"TRON","price_change_percentage_24h":0.7814,"symbol":"trx","total_volume":809046175},{"current_price":0.315687,"market_cap":391068613.0,"market_cap_change_percentage_24h":8.16329,"name":"Alien Worlds","price_change_percentage_24h":8.75682,"symbol":"tlm","total_volume":805974036},{"current_price":41.22,"market_cap":5622010408.0,"market_cap_change_percentage_24h":5.15252,"name":"Internet Computer","price_change_percentage_24h":5.39254,"symbol":"icp","total_volume":796525656},{"current_price":11.06,"market_cap":191381607.0,"market_cap_change_percentage_24h":22.3063,"name":"My Neighbor Alice","price_change_percentage_24h":22.18896,"symbol":"alice","total_volume":760712022},{"current_price":0.894125,"market_cap":5713678478.0,"market_cap_change_percentage_24h":-3.49234,"name":"Polygon","price_change_percentage_24h":-3.88114,"symbol":"matic","total_volume":728312390},{"current_price":96.48,"market_cap":1093984885.0,"market_cap_change_percentage_24h":-1.9235,"name":"Zcash","price_change_percentage_24h":-2.05432,"symbol":"zec","total_volume":652575657},{"current_price":16.34,"market_cap":7213929201.0,"market_cap_change_percentage_24h":-1.9088,"name":"Chainlink","price_change_percentage_24h":-2.1868,"symbol":"link","total_volume":622008368},{"current_price":13.14,"market_cap":13331763975.0,"market_cap_change_percentage_24h":-2.85034,"name":"Polkadot","price_change_percentage_24h":-3.51079,"symbol":"dot","total_volume":606819975},{"current_price":1.55,"market_cap":285276879.0,"market_cap_change_percentage_24h":-5.39724,"name":"Coin98","price_change_percentage_24h":-4.13966,"symbol":"c98","total_volume":602207145},{"current_price":47.55,"market_cap":4318155107.0,"market_cap_change_percentage_24h":-2.58785,"name":"Filecoin","price_change_percentage_24h":-3.05341,"symbol":"fil","total_volume":522527295},{"current_price":0.069904,"market_cap":4559184566.0,"market_cap_change_percentage_24h":-3.10575,"name":"VeChain","price_change_percentage_24h":-3.13378,"symbol":"vet","total_volume":485097619},{"current_price":137.25,"market_cap":1406277251.0,"market_cap_change_percentage_24h":-4.80392,"name":"Dash","price_change_percentage_24h":-5.01588,"symbol":"dash","total_volume":445332175},{"current_price":9.18,"market_cap":1537686743.0,"market_cap_change_percentage_24h":0.94707,"name":"Huobi Token","price_change_percentage_24h":1.16764,"symbol":"ht","total_volume":432411583},{"current_price":295.36,"market_cap":0.0,"market_cap_change_percentage_24h":0.0,"name":"Wrapped BNB","price_change_percentage_24h":-2.59481,"symbol":"wbnb","total_volume":403034589},{"current_price":0.385057,"market_cap":216054223.0,"market_cap_change_percentage_24h":2.91914,"name":"Chromia","price_change_percentage_24h":2.40977,"symbol":"chr","total_volume":401845850},{"current_price":10.98,"market_cap":3034676537.0,"market_cap_change_percentage_24h":-4.30834,"name":"Cosmos","price_change_percentage_24h":-4.33574,"symbol":"atom","total_volume":396133740},{"current_price":13.71,"market_cap":3666512215.0,"market_cap_change_percentage_24h":-1.38295,"name":"OKB","price_change_percentage_24h":-1.36671,"symbol":"okb","total_volume":392126462},{"current_price":0.254985,"market_cap":5952554819.0,"market_cap_change_percentage_24h":-3.09809,"name":"Stellar","price_change_percentage_24h":-3.09816,"symbol":"xlm","total_volume":368965240},{"current_price":7.85,"market_cap":3278233056.0,"market_cap_change_percentage_24h":2.6856,"name":"Terra","price_change_percentage_24h":1.86183,"symbol":"luna","total_volume":352978116},{"current_price":16.88,"market_cap":57200106.0,"market_cap_change_percentage_24h":12.15681,"name":"DeXe","price_change_percentage_24h":9.97774,"symbol":"dexe","total_volume":349509082},{"current_price":3.62,"market_cap":0.0,"market_cap_change_percentage_24h":0.0,"name":"Dawn Protocol","price_change_percentage_24h":-6.52576,"symbol":"dawn","total_volume":340147217},{"current_price":3.53,"market_cap":49207292.0,"market_cap_change_percentage_24h":23.87757,"name":"Alpha Quark Token","price_change_percentage_24h":23.39618,"symbol":"aqt","total_volume":337870474},{"current_price":26.89,"market_cap":7304690412.0,"market_cap_change_percentage_24h":-6.33092,"name":"Solana","price_change_percentage_24h":-6.25396,"symbol":"sol","total_volume":330705640},{"current_price":17.34,"market_cap":9022331169.0,"market_cap_change_percentage_24h":-5.81636,"name":"Uniswap","price_change_percentage_24h":-6.33504,"symbol":"uni","total_volume":293885172},{"current_price":7.86,"market_cap":1516029425.0,"market_cap_change_percentage_24h":-3.91789,"name":"Sushi","price_change_percentage_24h":-4.12806,"symbol":"sushi","total_volume":273121898},{"current_price":0.348605,"market_cap":1848470277.0,"market_cap_change_percentage_24h":7.28012,"name":"Theta Fuel","price_change_percentage_24h":7.25315,"symbol":"tfuel","total_volume":270169725},{"current_price":6.19e-06,"market_cap":3080862109.0,"market_cap_change_percentage_24h":-4.36384,"name":"Shiba Inu","price_change_percentage_24h":-4.54051,"symbol":"shib","total_volume":267577803},{"current_price":29.66,"market_cap":2091704427.0,"market_cap_change_percentage_24h":-3.54068,"name":"NEO","price_change_percentage_24h":-3.54466,"symbol":"neo","total_volume":259751732},{"current_price":273.6,"market_cap":3533885232.0,"market_cap_change_percentage_24h":-5.27199,"name":"Aave","price_change_percentage_24h":-6.25372,"symbol":"aave","total_volume":257447102},{"current_price":0.241907,"market_cap":1291714884.0,"market_cap_change_percentage_24h":-6.07896,"name":"Chiliz","price_change_percentage_24h":-6.16846,"symbol":"chz","total_volume":247640002}]';
var json = jsonDecode(mainpage_tokken);

String mainpage_pairs_uniswap = '[{"dailyVolumeUSD":54581.50414225494,"dex":"Uniswap","dyor_score":0.0038809029647055293,"network":"Ethereum Mainnet","reserveUSD":14064124.9313989,"token0":"mMSFT","token1":"UST","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":160476.2806293487,"dex":"Uniswap","dyor_score":0.011405284781175798,"network":"Ethereum Mainnet","reserveUSD":14070344.029831829,"token0":"LON","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":249827.40478392612,"dex":"Uniswap","dyor_score":0.017253455822982718,"network":"Ethereum Mainnet","reserveUSD":14479847.246088512,"token0":"WETH","token1":"renBTC","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":6347.865768860994,"dex":"Uniswap","dyor_score":0.0004274707474332696,"network":"Ethereum Mainnet","reserveUSD":14849824.945862355,"token0":"mSLV","token1":"UST","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":39188.49952097659,"dex":"Uniswap","dyor_score":0.002636283537755375,"network":"Ethereum Mainnet","reserveUSD":14865054.900104964,"token0":"PAXG","token1":"PAX","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":14999413.419991061,"token0":"DBL","token1":"BLUE","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":6237.154178175934,"dex":"Uniswap","dyor_score":0.00041376399933016895,"network":"Ethereum Mainnet","reserveUSD":15074182.839186324,"token0":"mIAU","token1":"UST","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":15079467.107979322,"token0":"XXi","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":6934.660494005886,"dex":"Uniswap","dyor_score":0.0004584174389017373,"network":"Ethereum Mainnet","reserveUSD":15127392.42778315,"token0":"mAMZN","token1":"UST","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":20197.690063825787,"dex":"Uniswap","dyor_score":0.0013261904322515975,"network":"Ethereum Mainnet","reserveUSD":15229856.5670801,"token0":"mGOOGL","token1":"UST","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":2685017.1512772804,"dex":"Uniswap","dyor_score":0.17433463568253427,"network":"Ethereum Mainnet","reserveUSD":15401512.96250008,"token0":"PAX","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":970369.3266144573,"dex":"Uniswap","dyor_score":0.05385473286202648,"network":"Ethereum Mainnet","reserveUSD":18018273.883198008,"token0":"WETH","token1":"FOX","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":18229219.160428043,"token0":"\u2697\ufe0f","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":622183.4857121656,"dex":"Uniswap","dyor_score":0.033755141585719996,"network":"Ethereum Mainnet","reserveUSD":18432258.212638583,"token0":"MIR","token1":"UST","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":293660.56077163626,"dex":"Uniswap","dyor_score":0.015392320730005586,"network":"Ethereum Mainnet","reserveUSD":19078381.091629557,"token0":"PAXG","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":387100.72214780765,"dex":"Uniswap","dyor_score":0.019241757630524162,"network":"Ethereum Mainnet","reserveUSD":20117742.338347014,"token0":"CARDS","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":20148796.568255194,"token0":"ETH2POS","token1":"DC","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":9072017.555348419,"dex":"Uniswap","dyor_score":0.37177141347388765,"network":"Ethereum Mainnet","reserveUSD":24402138.589888155,"token0":"SAND","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":1184.2617126753032,"dex":"Uniswap","dyor_score":4.739988632939943e-05,"network":"Ethereum Mainnet","reserveUSD":24984484.233684197,"token0":"BOND","token1":"USDC","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":103.737,"dex":"Uniswap","dyor_score":4.1333208034978505e-06,"network":"Ethereum Mainnet","reserveUSD":25097737.371900063,"token0":"wANATHA","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":26337659.341524594,"token0":"RK:ETH","token1":"ROOT","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":606593.0177218517,"dex":"Uniswap","dyor_score":0.022496322229386512,"network":"Ethereum Mainnet","reserveUSD":26964097.132706914,"token0":"AAVE","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":45342.465453674704,"dex":"Uniswap","dyor_score":0.0015882005592058634,"network":"Ethereum Mainnet","reserveUSD":28549584.11319725,"token0":"WETH","token1":"HEZ","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":1222951.501993165,"dex":"Uniswap","dyor_score":0.041632800035676945,"network":"Ethereum Mainnet","reserveUSD":29374711.78842559,"token0":"FRAX","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":179671.3694144438,"dex":"Uniswap","dyor_score":0.005995446897794045,"network":"Ethereum Mainnet","reserveUSD":29967969.440368455,"token0":"RAI","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":30489305.95703035,"token0":"DELTA","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":304549.8970194808,"dex":"Uniswap","dyor_score":0.009729441252893588,"network":"Ethereum Mainnet","reserveUSD":31301889.708096653,"token0":"MKR","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":97915.3142419691,"dex":"Uniswap","dyor_score":0.0030005980692428525,"network":"Ethereum Mainnet","reserveUSD":32631932.69556302,"token0":"FNK","token1":"USDT","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":978829.6910461562,"dex":"Uniswap","dyor_score":0.028636695787725923,"network":"Ethereum Mainnet","reserveUSD":34180957.82774268,"token0":"FXS","token1":"FRAX","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":35891.28627588656,"dex":"Uniswap","dyor_score":0.0010106334484365,"network":"Ethereum Mainnet","reserveUSD":35513653.67078653,"token0":"WETH","token1":"wPE","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":35738296.888597816,"token0":"WDOGE","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":708913.8370082522,"dex":"Uniswap","dyor_score":0.019336188868883206,"network":"Ethereum Mainnet","reserveUSD":36662542.02497333,"token0":"DPI","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":1105517.9892685458,"dex":"Uniswap","dyor_score":0.027172393528891087,"network":"Ethereum Mainnet","reserveUSD":40685337.053325914,"token0":"LINK","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":1421678.20203,"dex":"Uniswap","dyor_score":0.034168118411831955,"network":"Ethereum Mainnet","reserveUSD":41608325.77592836,"token0":"USDC","token1":"USDT","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.4110137319064356,"dex":"Uniswap","dyor_score":9.339114358935069e-09,"network":"Ethereum Mainnet","reserveUSD":44009926.00687065,"token0":"MT","token1":"ACR","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":61816.15515314082,"dex":"Uniswap","dyor_score":0.0010979292585648385,"network":"Ethereum Mainnet","reserveUSD":56302493.69066273,"token0":"DAI","token1":"USDC","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":35237.52056072509,"dex":"Uniswap","dyor_score":0.0005399079676490306,"network":"Ethereum Mainnet","reserveUSD":65265790.97204838,"token0":"FRAX","token1":"USDC","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":4787935.12369684,"dex":"Uniswap","dyor_score":0.06564832881238285,"network":"Ethereum Mainnet","reserveUSD":72933084.669685,"token0":"DAI","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":25.14524431808317,"dex":"Uniswap","dyor_score":3.0634489193931256e-07,"network":"Ethereum Mainnet","reserveUSD":82081487.17251824,"token0":"UNI","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":99481318.77436909,"token0":"HKMT","token1":"USDT","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":120543063.72902264,"token0":"M2","token1":"wPE","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":1582275.91216016,"dex":"Uniswap","dyor_score":0.012009039018162174,"network":"Ethereum Mainnet","reserveUSD":131757079.7935759,"token0":"WBTC","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":52325.52095162916,"dex":"Uniswap","dyor_score":0.00024279654984262153,"network":"Ethereum Mainnet","reserveUSD":215511797.78108904,"token0":"WISE","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":22408953.743036363,"dex":"Uniswap","dyor_score":0.09856914589980265,"network":"Ethereum Mainnet","reserveUSD":227342476.57796973,"token0":"WETH","token1":"USDT","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":21691850.971327,"dex":"Uniswap","dyor_score":0.08332415347607951,"network":"Ethereum Mainnet","reserveUSD":260330889.2607501,"token0":"USDC","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":7875378.483068801,"dex":"Uniswap","dyor_score":0.02533394456609331,"network":"Ethereum Mainnet","reserveUSD":310862702.9052999,"token0":"FEI","token1":"WETH","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":482345.9053484585,"dex":"Uniswap","dyor_score":0.001489840528326738,"network":"Ethereum Mainnet","reserveUSD":323756735.15217656,"token0":"FEI","token1":"TRIBE","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":735.8872188342699,"dex":"Uniswap","dyor_score":2.003558721278128e-06,"network":"Ethereum Mainnet","reserveUSD":367290067.9271462,"token0":"HANU","token1":"MIA","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":121.8638027054912,"dex":"Uniswap","dyor_score":3.2387163126730966e-07,"network":"Ethereum Mainnet","reserveUSD":376271926.7156501,"token0":"HANU","token1":"GOJ","yield_rate_percentage_of_volume":0.3},{"dailyVolumeUSD":0.0,"dex":"Uniswap","dyor_score":0.0,"network":"Ethereum Mainnet","reserveUSD":1743372228.4526973,"token0":"UETH","token1":"ULCK","yield_rate_percentage_of_volume":0.3}]';
var json2 = jsonDecode(mainpage_pairs_uniswap);


class ParticleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ParticleBackgroundPage(),
      ),
    );
  }
}

class ParticleBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: AnimatedBackground()),
        Positioned.fill(child: Particles(30)),
        Positioned.fill(child: CenteredText()),
      ],
    );
  }
}

class Particles extends StatefulWidget {
  final int numberOfParticles;

  Particles(this.numberOfParticles);
  @override
  _ParticlesState createState() => _ParticlesState();
}

class _ParticlesState extends State<Particles> {
  final Random random = Random();
  final List<ParticleModel> particles = [];

  @override
  void initState() {
    List.generate(widget.numberOfParticles, (index) {
      particles.add(ParticleModel(random));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Rendering(
      startTime: Duration(seconds: 30),
      onTick: _simulateParticles,
      builder: (context, time) {
        return CustomPaint(
          painter: ParticlePainter(particles, time),
        );
      },
    );
  }

  _simulateParticles(Duration time) {
    particles.forEach((particle) => particle.maintainRestart(time));
  }
}

class ParticleModel {
  Animatable tween;
  double size;
  AnimationProgress animationProgress;
  Random random;

  ParticleModel(this.random) {
    restart();
  }

  restart({Duration time = Duration.zero}) {
    final startPosition = Offset(-0.2 + 1.4 * random.nextDouble(), 1.2);
    final endPosition = Offset(-0.2 + 1.4 * random.nextDouble(), -0.2);
    final duration = Duration(milliseconds: 3000 + random.nextInt(6000));

    tween = MultiTrackTween([
      Track("x").add(
          duration, Tween(begin: startPosition.dx, end: endPosition.dx),
          curve: Curves.easeInOutSine),
      Track("y").add(
          duration, Tween(begin: startPosition.dy, end: endPosition.dy),
          curve: Curves.easeIn),
    ]);
    animationProgress = AnimationProgress(duration: duration, startTime: time);
    size = 0.2 + random.nextDouble() * 0.4;
  }

  maintainRestart(Duration time) {
    if (animationProgress.progress(time) == 1.0) {
      restart(time: time);
    }
  }
}

class ParticlePainter extends CustomPainter {
  List<ParticleModel> particles;
  Duration time;

  ParticlePainter(this.particles, this.time);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withAlpha(50);

    particles.forEach((particle) {
      var progress = particle.animationProgress.progress(time);
      final animation = particle.tween.transform(progress);
      final position =
      Offset(animation["x"] * size.width, animation["y"] * size.height);
      canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xff8a113a), end: Colors.lightBlue.shade900)),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xff440216), end: Colors.blue.shade600))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [animation["color1"], animation["color2"]])),
        );
      },
    );
  }
}

class CenteredText extends StatelessWidget {

  const CenteredText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:Column(
          children: [
            Padding(
                padding:EdgeInsets.all(50),
                child:Text(
                    "DYOR",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white.withOpacity(0.8)
                    ),
                )
            ),
            Padding(
                padding: EdgeInsets.all(50),
                child: SizedBox(
                  width: 550,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded),
                      hintText: 'Search Defi Pair Infomation here',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                )
            ),
           Container(
             child:RaisedButton(
               onPressed: () {
                 Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Simulator()),
                 );                 // 눌렀을 때 첫 번째 route로 되돌아 갑니다.
               },
               child: Text('Submit'),
             ),
           ),

           Container(
             height: 250,
             decoration: new BoxDecoration(
               color: Colors.white
             ),
             padding: const EdgeInsets.all(0),
             margin: const EdgeInsets.all(30.0),
             child: Padding(
                 padding: EdgeInsets.all(40),
                 child: JsonTable(
                   json,
                   tableHeaderBuilder: (String header) {
                     return Container(
                       padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                       decoration: BoxDecoration(border: Border.all(width: 0.5),color: Colors.grey[300]),
                       child: Text(
                         header,
                         textAlign: TextAlign.center,
                         style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w700, fontSize: 14.0,color: Colors.black87),
                       ),
                     );
                   },
                   tableCellBuilder: (value) {
                     return Container(
                       padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                       decoration: BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))),
                       child: Text(
                         value,
                         textAlign: TextAlign.center,
                         style: Theme.of(context).textTheme.display1.copyWith(fontSize: 14.0, color: Colors.grey[900]),
                       ),
                     );
                   },
                 )
             ),
           ),
            Container(
                    height: 250,
                    decoration: new BoxDecoration(
                        color: Colors.white
                    ),
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(30.0),
                    child:Padding(
                        padding: EdgeInsets.all(40),
                        child: JsonTable(
                          json2,
                          tableHeaderBuilder: (String header) {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(border: Border.all(width: 0.5),color: Colors.grey[300]),
                              child: Text(
                                header,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w700, fontSize: 14.0,color: Colors.black87),
                              ),
                            );
                          },
                          tableCellBuilder: (value) {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                              decoration: BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))),
                              child: Text(
                                value,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.display1.copyWith(fontSize: 14.0, color: Colors.grey[900]),
                              ),
                            );
                          },
                        )
                    ),
                )
          ],
        )
      )
    );
  }
}

