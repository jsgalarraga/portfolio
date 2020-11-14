import 'package:flutter/material.dart';
import 'package:portfolio/ui/home/narrow_view.dart';
import 'package:portfolio/ui/home/wide_view.dart';
import 'package:portfolio/ui/language_widget.dart';
import 'package:portfolio/utils/dimensions.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              if (constraints.maxWidth > MyDimensions.wideWidth) return WideView();
              return NarrowView();
            },
          ),
          Align(
            alignment: Alignment.topRight,
            child: LanguageSelector(),
          )
        ],
      ),
    );
  }
}
