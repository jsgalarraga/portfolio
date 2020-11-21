import 'package:flutter/material.dart';
import 'package:portfolio/ui/contact/common_items.dart';
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
                      constraints: BoxConstraints(maxWidth: 500),
                      height: constraints.maxHeight < 750 ? 750 : constraints.maxHeight,
                      width: constraints.maxWidth * .8,
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
          'images/hamaca.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
