import 'package:flutter/material.dart';

import 'widgets/app_bar_widget.dart';
import 'widgets/drawer_home.dart';
import 'widgets/panel_center_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, 100),
        child: AppBarWidget(key: Key("Home center panel"))
      ),
      body: PanelCenterHome(key: Key("Home center panel")),
      drawer: DrawerHome(key: const Key("home Drawer"),),
    );
  }
}
