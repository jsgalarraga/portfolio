import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {
  MyFlatButton({
    @required this.text,
    @required this.onTap,
  });
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(width: 4, color: Colors.white,)
          ),
          child: Center(
            child: Text(text, style: TextStyle(fontSize: 16)),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
