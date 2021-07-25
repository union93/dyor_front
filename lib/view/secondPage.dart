import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';


class Simulator extends StatelessWidget {
  final List<Feature> features = [
    Feature(
      title: "weth",
      color: Colors.blue,
      data: [0.72,0.67,0.66,0.65,0.64]
    ),
    Feature(
        title: "aave",
        color: Colors.red,
        data: [0.62,0.65,0.62,0.60,0.67]
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simulator'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: TextField(

              )
            ),
            Container(
              height: 350,
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child:LineGraph(
                  features: features,
                  size: Size(520, 300),
                  labelX: ['07.24.10:59','07.24.11:04','07.24.11:09','07.24.11:14','07.24.11:19'],
                  labelY: ['0.1960', '0.1962', '0.1964', '0.1964', '0.1965'],
                  showDescription: false,
                  graphColor: Colors.white30,
                  graphOpacity: 1.0,
                  verticalFeatureDirection: true,
                  descriptionHeight: 150,
                ),
              )
            ),
            Container(
                height: 50,
                color: Colors.black.withOpacity(0.2),
                child: Center(
                  child:Text(
                    'exchange_rate: 58.33347602739212'
                  )
                )
            ),
            Container(
                height: 50,
                color: Colors.white.withOpacity(0.5),
                child: Center(
                    child:Text(
                     "tvl:26996509.194454607"
                    )
                )
            ),
            Container(
                height: 50,
                color: Colors.grey.withOpacity(0.5),
                child: Center(
                    child:Text(
                        "volume_24h:633918.728185116"
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}

