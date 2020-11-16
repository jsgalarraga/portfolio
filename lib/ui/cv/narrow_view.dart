import 'package:flutter/material.dart';
import 'package:portfolio/ui/cv/common_items.dart';
import 'package:portfolio/ui/cv/model.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:provider/provider.dart';

class NarrowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.darkBlue,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageView(),
                    Container(
                      height: context.watch<CvTabModel>().tabSize,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          CV(),
                          Padding(padding: EdgeInsets.only(top: 40)),
                          NarrowTabs(),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          TabContent(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(height: 200),
        child: Image.asset(
          'images/de_pie_nieve_cut.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}