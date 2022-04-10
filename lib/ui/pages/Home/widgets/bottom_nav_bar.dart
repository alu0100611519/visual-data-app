import 'package:flutter/material.dart';

import '../../constant.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({required Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    const primaryColor = Constants.yellowDak;
    const secondaryColor = Colors.black54;
    const backgroundColor = Colors.white;
    const shadowColor = Colors.grey; //color of Navbar shadow
    double elevation = 100; //Elevation of the bottom Navbar

    return BottomAppBar(
      color: Colors.transparent,
      elevation: 10,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, height),
            painter: BottomNavCurvePainter(backgroundColor: backgroundColor, shadowColor: shadowColor, elevation: elevation),
          ),
          Center(
            heightFactor: 0.8,
            child: FloatingActionButton(
                backgroundColor: primaryColor,
                child: const Icon(Icons.add),
                elevation: 10,
                onPressed: () {
                  print("ESTO ES EL BOTON CHART");
                }),
          ),
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavBarIcon(
                  key: const Key("Search Icon"),
                  text: "Search",
                  icon: Icons.search_outlined,
                  selected: false,
                  onPressed: () {},
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                const SizedBox(width: 56),
                NavBarIcon(
                    key: const Key("favourite Icon"),
                    text: "favourite",
                    icon: Icons.favorite_border,
                    selected: false,
                    onPressed: () {

                    },
                    defaultColor: secondaryColor,
                    selectedColor: primaryColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter({this.backgroundColor = Colors.white, this.insetRadius = 31, this.shadowColor = Colors.grey, this.elevation = 100});

  Color backgroundColor;
  Color shadowColor;
  double elevation;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path();

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;

    path.lineTo(insetCurveBeginnningX, 0);
    path.arcToPoint(Offset(insetCurveEndX, 0),
    radius: Radius.circular(41), clockwise: true);
    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawShadow(path, shadowColor, elevation, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
  {required Key key,
  required this.text,
  required this.icon,
  required this.selected,
  required this.onPressed,
  this.selectedColor = const Color(0xffFF8527),
  this.defaultColor = Colors.black54})
  : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
