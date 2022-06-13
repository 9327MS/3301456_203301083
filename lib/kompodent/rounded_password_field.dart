import 'package:bitkim/constants.dart';
import 'package:bitkim/kompodent/text_field_container.dart';
import 'package:flutter/material.dart';
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool _gorunurluk=true;
    return TextFieldContainer(
      child: TextField(
        obscureText: _gorunurluk,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Şifre",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}