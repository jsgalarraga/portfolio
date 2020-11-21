import 'package:flutter/material.dart';
import 'package:portfolio/ui/contact/common_items.dart';
import 'package:portfolio/utils/colors.dart';

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
                      constraints: BoxConstraints(maxWidth: 500),
                      height: 750,
                      width: constraints.maxWidth * .8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Contact(),
                          Name(),
                          Email(),
                          Subject(),
                          Message(),
                          SendResultMessage(),
                          SendButton(),
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
          'images/hamaca.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}