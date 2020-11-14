import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/ui/home/common_items.dart';
import 'package:portfolio/utils/dimensions.dart';

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
                      height: 600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyLogo(),
                          MyTitle(),
                          Description(),
                          NarrowButtons(),
                          SocialButton(),
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
          'images/andando_nieve.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class NarrowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        if (constraints.maxWidth > MyDimensions.mediumWidth)
          return ButtonsRow();
        return ButtonsCol();
      },
    );
  }
}
