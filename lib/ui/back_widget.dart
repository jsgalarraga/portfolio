import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

class BackArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: 32,
        height: 32,
        child: Material(
          color: MyColors.darkBlue,
          child: InkWell(
            child: Center(
              child: Icon(Icons.arrow_back, color: Colors.white, size: 18,),
            ),
            onTap: () => Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName)),
          ),
        ),
      ),
    );
  }
}
