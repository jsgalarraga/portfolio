import 'package:flutter/material.dart';
import 'package:portfolio/ui/back_widget.dart';
import 'package:portfolio/ui/language_widget.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:portfolio/utils/texts.dart';
import 'package:provider/provider.dart';

class CVPage extends StatefulWidget {
  @override
  _CVPageState createState() => _CVPageState();
}

class _CVPageState extends State<CVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > MyDimensions.wideWidth)
                return Container(
                  color: MyColors.darkBlue,
                  child: Center(child: Text(context.watch<LanguageModel>().texts.wip)),
                );
              return Container(
                color: MyColors.darkBlue,
                child: Center(child: Text(context.watch<LanguageModel>().texts.wip)),
              );
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
