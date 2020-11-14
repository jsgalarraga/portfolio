import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {
  MyFlatButton({
    @required this.text,
    @required this.onTap,
    this.reactive = false,
  });

  final String text;
  final Function onTap;
  final bool reactive;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Container(
                width: reactive ? constraints.maxWidth / 2 : 120,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 4,
                  color: Colors.white,
                )),
                child: Center(
                  child: Text(text, style: TextStyle(fontSize: 16)),
                ),
              ),
              onTap: onTap,
            ),
          ),
        );
      },
    );
  }
}