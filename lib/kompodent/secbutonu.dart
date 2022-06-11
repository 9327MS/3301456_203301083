import 'package:flutter/material.dart';
import 'package:bitkim/constants.dart';

class secbutonu extends StatelessWidget {
  final String? text;
  final Function()? press;
  final Color color, textColor;

  const secbutonu({
    Key? key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.5,
      height: size.height*0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14.0),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      side: BorderSide(color: color)))),
          onPressed: press!,
          child: Text(
            text!,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}