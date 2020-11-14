import 'package:flutter/material.dart';

abstract class Texts{
  Texts._();

  String mainTitle;
  String mainDescription;
  String portfolio;
  String contact;
  String cv;
}

class EspTexts implements Texts{
  @override
  String mainTitle = 'Ingeniero / Solucionador de problemas';

  @override
  String mainDescription = 'Ingeniero Industrial especializado en Automática y Electrónica\n'
      'Desarrollador de Flutter y Python\n'
      'Actualmente trabajando en Soluciones Med&Home como \nIngeniero de I+D / Desarrollador';

  @override
  String contact = 'Contacto';

  @override
  String cv = 'CV';

  @override
  String portfolio = 'Portfolio';
}

class EngTexts implements Texts {
  @override
  String mainTitle = 'Engineer / Problem solver';

  @override
  String mainDescription = 'Industrial Engineer specialized in Electronics and Automation\n'
      'Flutter and Python developer\n'
      'Working in Med&Home Solutions as a R&D Engineer / Developer';

  @override
  String contact = 'Contact';

  @override
  String cv = 'CV';

  @override
  String portfolio = 'Portfolio';
}

enum Languages { esp, eng }

const Map<Languages, String> LanguagesText = {
  Languages.esp: 'ES',
  Languages.eng: 'EN',
};

class LanguageModel extends ChangeNotifier{
  Languages selectedLang = Languages.eng;
  Texts texts = EngTexts();

  void changeLang(Languages lang){
    selectedLang = lang;
    switch(lang){
      case Languages.eng:
        texts = EngTexts();
        break;
      case Languages.esp:
        texts = EspTexts();
        break;
      default:
        texts = EngTexts();
    }
    notifyListeners();
  }
}
