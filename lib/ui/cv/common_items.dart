import 'package:flutter/material.dart';
import 'package:portfolio/components/my_buttons.dart';
import 'package:portfolio/ui/cv/model.dart';
import 'package:portfolio/utils/cv_icons.dart';
import 'package:portfolio/utils/texts.dart';
import 'package:provider/provider.dart';

String name;
String email;
String subject;
String message;

class CV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<LanguageModel>().texts.cv,
      style: TextStyle(fontSize: 36),
    );
  }
}

class WideTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyFlatButton.tab(context, TabType.experience),
        MyFlatButton.tab(context, TabType.skills),
        MyFlatButton.tab(context, TabType.education),
      ],
    );
  }
}

class NarrowTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyIconFlatButton.tab(context, TabType.experience, Icons.work),
        MyIconFlatButton.tab(context, TabType.skills, CvIcons.tools),
        MyIconFlatButton.tab(context, TabType.education, CvIcons.graduate),
      ],
    );
  }
}

class TabContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    switch (context.watch<CvTabModel>().currentTab) {
      case TabType.experience:
        return ExperienceTab();
      case TabType.skills:
        return SkillsTab();
      case TabType.education:
        return EducationTab();
      default:
        return ExperienceTab();
    }
  }
}

class ExperienceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            height: 1700,
            width: constraints.maxWidth * .8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CvEntry(
                  title: context.watch<LanguageModel>().texts.medHomeTitle,
                  text: context.watch<LanguageModel>().texts.medHomeText,
                  period: context.watch<LanguageModel>().texts.medHomePeriod,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.protocolosTitle,
                  text: context.watch<LanguageModel>().texts.protocolosText,
                  period: context.watch<LanguageModel>().texts.protocolosPeriod,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.deloitteTitle,
                  text: context.watch<LanguageModel>().texts.deloitteText,
                  period: context.watch<LanguageModel>().texts.deloittePeriod,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.tfmTitle,
                  text: context.watch<LanguageModel>().texts.tfmText,
                  period: context.watch<LanguageModel>().texts.tfmPeriod,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.openbankTitle,
                  text: context.watch<LanguageModel>().texts.openbankText,
                  period: context.watch<LanguageModel>().texts.openbankPeriod,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.tfgTitle,
                  text: context.watch<LanguageModel>().texts.tfgText,
                  period: context.watch<LanguageModel>().texts.tfgPeriod,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.a3ctiTitle,
                  text: context.watch<LanguageModel>().texts.a3ctiText,
                  period: context.watch<LanguageModel>().texts.a3ctiPeriod,
                ),
              ],
            ),
          );
        }
    );
  }
}

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            height: 500,
            width: constraints.maxWidth * .8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CvEntry(
                  title: context.watch<LanguageModel>().texts.personalTitle,
                  text: context.watch<LanguageModel>().texts.personalText,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.sportsTitle,
                  text: context.watch<LanguageModel>().texts.sportsText,
                  textSize: 24,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.develTitle,
                  text: context.watch<LanguageModel>().texts.develText,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.engTitle,
                  text: context.watch<LanguageModel>().texts.engText,
                ),
                CvEntry(
                  title: context.watch<LanguageModel>().texts.officeTitle,
                  text: context.watch<LanguageModel>().texts.officeText,
                ),
              ],
            ),
          );
        }
    );
  }
}

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: 400,
          width: constraints.maxWidth * .8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CvEntry(
                title: context.watch<LanguageModel>().texts.degreeTitle,
                text: context.watch<LanguageModel>().texts.degreeText,
                period: context.watch<LanguageModel>().texts.degreePeriod,
              ),
              CvEntry(
                title: context.watch<LanguageModel>().texts.masterTitle,
                text: context.watch<LanguageModel>().texts.masterText,
                period: context.watch<LanguageModel>().texts.masterPeriod,
              ),
              CvEntry(
                title: context.watch<LanguageModel>().texts.aaltoTitle,
                text: context.watch<LanguageModel>().texts.aaltoText,
                period: context.watch<LanguageModel>().texts.aaltoPeriod,
              ),
            ],
          ),
        );
      }
    );
  }
}

class CvEntry extends StatelessWidget {
  CvEntry({
    this.title,
    this.text,
    this.period,
    this.textSize,
  });

  final String title;
  final String text;
  final String period;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) Text(title, style: TextStyle(fontSize: 18)),
        if (text != null) Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(text, style: TextStyle(fontSize: textSize ?? 15), textAlign: TextAlign.justify),
        ),
        if (period != null) Text(period, style: TextStyle(fontStyle: FontStyle.italic))
      ],
    );
  }
}
