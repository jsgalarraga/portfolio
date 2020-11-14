import 'package:flutter/material.dart';
import 'package:portfolio/utils/texts.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/utils/colors.dart';

class LanguageSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        color: MyColors.darkBlue,
        child: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LanguageButton(language: Languages.esp),
              LanguageButton(language: Languages.eng),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  LanguageButton({
    @required this.language,
  });

  final Languages language;

  @override
  Widget build(BuildContext context) {
    Color _tileColor =
        context.watch<LanguageModel>().selectedLang == language ? Colors.white : MyColors.darkBlue;
    Color _textColor =
        context.watch<LanguageModel>().selectedLang == language ? MyColors.darkBlue : Colors.white;
    return Container(
      width: 32,
      height: 32,
      child: Material(
        color: _tileColor,
        child: InkWell(
          child: Center(
            child: Text(
              LanguagesText[language],
              style: TextStyle(fontSize: 12, color: _textColor),
            ),
          ),
          onTap: () => context.read<LanguageModel>().changeLang(language),
        ),
      ),
    );
  }
}
