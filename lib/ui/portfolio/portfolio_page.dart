import 'package:flutter/material.dart';
import 'package:portfolio/ui/back_widget.dart';
import 'package:portfolio/ui/language_widget.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              if (constraints.maxWidth > MyDimensions.wideWidth) return Container(color: MyColors.darkBlue,);
              return Container(color: MyColors.darkBlue,);
            },
          ),
          Align(
            alignment: Alignment.topRight,
            child: LanguageSelector(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: BackArrow(),
          ),
        ],
      ),
    );
  }
}
