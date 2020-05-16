import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String text;
  final String hint;
  final bool obscure;
  final Widget icon;

  const CustomTextfield({Key key, this.text, this.hint, this.obscure, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(text),
        Divider(
          color: Colors.transparent,
          height: 10,
        ),
        TextField(
          obscureText: obscure != null ? obscure : false,
          decoration: InputDecoration(
            suffixIcon: icon != null ? icon : null,
            contentPadding: EdgeInsets.all(10),
            isDense: true,
            fillColor: Colors.white,
            filled: true,
            hintText: hint,
            border: OutlineInputBorder(
              borderSide:BorderSide.none,

              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
