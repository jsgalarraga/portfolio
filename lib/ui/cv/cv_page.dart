import 'package:flutter/material.dart';
import 'package:portfolio/ui/back_widget.dart';
import 'package:portfolio/ui/cv/narrow_view.dart';
import 'package:portfolio/ui/cv/wide_view.dart';
import 'package:portfolio/ui/language_widget.dart';
import 'package:portfolio/utils/dimensions.dart';

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
                return WideView();
              return NarrowView();
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
