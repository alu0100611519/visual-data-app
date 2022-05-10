//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:visual_data_app/cacharros/home_page.dart';

//import 'ui/pages/ListPresentation/List_presentation_page.dart';
// import 'pages/debug.dart';

/*
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
};*/



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}

void main() => runApp(const MyApp());
