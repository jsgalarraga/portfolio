import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/ui/home/common_items.dart';

class WideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContentView(),
        ImageView(),
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
                  child: Container(
                    height: constraints.maxHeight < 500 ? 500 : constraints.maxHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyLogo(),
                        MyTitle(),
                        Description(),
                        ButtonsRow(),
                        SocialButton(),
                      ],
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
          'images/andando_nieve.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
