import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class DrawerHome extends StatefulWidget {
  DrawerHome({required Key key}) : super(key: key);

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class ButtonsInfo {
  //idCategorie
  String title;

  ButtonsInfo({required this.title});
}

int _currentIndex = 0;

//Carpetas
List<ButtonsInfo> _buttonNames = [
  ButtonsInfo(title: "Home"),
  ButtonsInfo(title: "Setting"),
  ButtonsInfo(title: "Notification"),
  ButtonsInfo(title: "Contacts"),
  ButtonsInfo(title: "Sales"),
  ButtonsInfo(title: "Marketing"),
  ButtonsInfo(title: "Security"),
  ButtonsInfo(title: "Users"),
];

//Conexiones BD
List<ButtonsInfo> _bdConexion = [
  ButtonsInfo(title: "conexion 1"),
  ButtonsInfo(title: "conexion 2"),
  ButtonsInfo(title: "conexion 1"),
  ButtonsInfo(title: "conexion 2"),
  ButtonsInfo(title: "conexion 1"),
  ButtonsInfo(title: "conexion 2")
];

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: SingleChildScrollView(
        child:Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 100,
                color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Center(
                        child: Text("Esto es el titulo"),
                      ),
                      color: Constants.blueDark,
                    )),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              ...List.generate(
                _buttonNames.length,
                (index) => Column(
                  children: [
                    Container(
                      decoration: index == _currentIndex
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Constants.yellowLight.withOpacity(0.9),
                                  Constants.yellowDak.withOpacity(0.9),
                                ],
                              ),
                            )
                          : null,
                      child: ListTile(
                        title: Text(
                          _buttonNames[index].title,
                          style: const TextStyle(color:  Colors.black87,fontSize: 17),
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.all(Constants.kPadding),
                          child: Icon(
                            Icons.folder,
                            color:  Constants.grayDark,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              print("delete directorio");
                            },
                            icon: Icon(
                              Icons.delete,
                              color:  Constants.grayDark,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){print("el on tap del create");},
                child: Text("Create...", style: TextStyle(color: Colors.blue, fontSize: 20),),
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.1,
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                color: Colors.amber,
              ),
              ...List.generate(
                _bdConexion.length,
                (index) => Column(
                  children: [
                    Container(
                      child: ListTile(
                        title: Text(
                          _bdConexion[index].title,
                          style: const TextStyle(color: Constants.brownDark,fontSize: 17),
                        ),
                        leading: IconButton(
                        onPressed: (){print("ESTO");},
                        icon: Icon(Icons.remove, color: Colors.red,)
                        ),
                        onTap: () {
                          setState(() {
                            print("Esto es la conexion de bbdd");
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}