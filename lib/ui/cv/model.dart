import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/utils/texts.dart';

enum TabType {experience, skills, education}

String getTabText(BuildContext context, TabType type){
  switch(type){
    case TabType.experience:
      return context.watch<LanguageModel>().texts.experience;
    case TabType.skills:
      return context.watch<LanguageModel>().texts.skills;
    case TabType.education:
      return context.watch<LanguageModel>().texts.education;
    default:
      return null;
  }
}

class CvTabModel extends ChangeNotifier{
  TabType currentTab = TabType.experience;
  double tabSize = 620;

  Map<TabType, double> _tabSizes = {
    TabType.experience: 620,
    TabType.skills: 620,
    TabType.education: 620,
  };

  void changeTab(TabType type){
    currentTab = type;
    tabSize = _tabSizes[type];
    notifyListeners();
  }
}