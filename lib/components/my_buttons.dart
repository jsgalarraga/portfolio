import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/ui/cv/model.dart';

class MyFlatButton extends StatelessWidget {
  MyFlatButton({
    @required this.text,
    @required this.onTap,
    this.reactive = false,
    this.selected = false,
  });

  final String text;
  final Function onTap;
  final bool reactive;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Material(
            color: selected ? Colors.white : Colors.transparent,
            child: InkWell(
              child: Container(
                width: reactive ? constraints.maxWidth / 2 : 120,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 4,
                  color: Colors.white,
                )),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: selected ? 18 : 16,
                      color: selected ? MyColors.darkBlue : Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: onTap,
            ),
          ),
        );
      },
    );
  }

  factory MyFlatButton.tab(BuildContext context, TabType type){
    return MyFlatButton(
      text: getTabText(context, type),
      selected: context.watch<CvTabModel>().currentTab == type,
      onTap: (){
        context.read<CvTabModel>().changeTab(type);
      },
    );
  }
}

class MyIconFlatButton extends StatelessWidget {
  MyIconFlatButton({
    @required this.icon,
    @required this.onTap,
    this.reactive = false,
    this.selected = false,
  });

  final icon;
  final Function onTap;
  final bool reactive;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Material(
            color: selected ? Colors.white : Colors.transparent,
            child: InkWell(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.white,
                    )),
                child: Center(
                  child: Icon(
                    icon,
                    size: 20,
                    color: selected ? MyColors.darkBlue : Colors.white,
                  ),
                ),
              ),
              onTap: onTap,
            ),
          ),
        );
      },
    );
  }

  factory MyIconFlatButton.tab(BuildContext context, TabType type, icon){
    return MyIconFlatButton(
      icon: icon,
      selected: context.watch<CvTabModel>().currentTab == type,
      onTap: (){
        context.read<CvTabModel>().changeTab(type);
      },
    );
  }
}

