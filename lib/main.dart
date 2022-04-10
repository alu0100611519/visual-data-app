
import 'package:flutter/material.dart';
import 'package:visual_data_app/ui/pages/Home/home_page.dart';
import 'package:visual_data_app/ui/pages/constant.dart';

void main() async {
 //WidgetsFlutterBinding.ensureInitialized();
 // await initializeDI();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  //this widget is the root of the aplication.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visual Data App',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Constants.blueDark
      ),
      home:const HomePage(),
    );
  }


}