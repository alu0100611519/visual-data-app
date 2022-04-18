import 'package:flutter/material.dart';

import 'home.dart';
import 'interval.dart';
import 'line_area_point.dart';
import 'polygon_custom.dart';
import 'interaction_channel_dynamic.dart';
import 'bigdata.dart';
import 'echarts.dart';
// import 'pages/debug.dart';

final routes = {
  '/': (context) => const HomePage(),
  '/examples/Interval Element': (context) => IntervalPage(),
  '/examples/Line,Area,Point Element': (context) => LineAreaPointPage(),
  '/examples/Polygon,Custom Element': (context) => PolygonCustomPage(),
  '/examples/Interaction Channel, Dynamic': (context) =>
      const InteractionChannelDynamicPage(),
  '/examples/Bigdata': (context) => BigdataPage(),
  '/examples/Echarts': (context) => EchartsPage(),
  // '/examples/Debug': (context) => DebugPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: '/',
    );
  }
}

void main() => runApp(const MyApp());