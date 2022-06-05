import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;
  const Background({
    Key? key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/cs.jpg'
          ),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.rectangle,
      ),
      alignment: Alignment.bottomCenter,);
  }
}