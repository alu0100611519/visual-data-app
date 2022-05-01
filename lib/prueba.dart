class GradientIconButtonFb7 extends StatelessWidget {
  final double radius;
  final Widget icon;
  final LinearGradient gradient;
  final Function() onPressed;

  const GradientIconButtonFb7(
      {required this.gradient,
      required this.icon,
      required this.onPressed,
      this.radius = 48.0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: radius,
      height: radius,
      decoration:  ShapeDecoration(
        gradient:gradient,
        shape: const CircleBorder(side: BorderSide(color: Colors.transparent)),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        splashRadius: radius / 2,
        iconSize: radius / 2,
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}