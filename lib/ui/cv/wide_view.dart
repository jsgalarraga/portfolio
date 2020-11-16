import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/ui/cv/common_items.dart';
import 'package:portfolio/ui/cv/model.dart';
import 'package:portfolio/utils/colors.dart';

class WideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageView(),
        ContentView(),
      ],
    );
  }
}

class ContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: MyColors.darkBlue,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: constraints.maxHeight < context.watch<CvTabModel>().tabSize
                          ? context.watch<CvTabModel>().tabSize
                          : constraints.maxHeight,
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          CV(),
                          Padding(padding: EdgeInsets.only(top: 40)),
                          WideTabs(),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          TabContent(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Image.asset(
          'images/de_pie_nieve.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
