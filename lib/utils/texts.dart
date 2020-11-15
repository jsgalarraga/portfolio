import 'package:flutter/material.dart';

abstract class Texts{
  Texts._();

  String wip;

  //Home Page
  String mainTitle;
  String mainDescription;
  String portfolio;
  String contact;
  String cv;

  //Contact Page
  String name;
  String nameError;
  String email;
  String emailError;
  String subject;
  String subjectError;
  String message;
  String messageError;
  String send;
}

class EspTexts implements Texts{
  @override
  String wip = 'Trabajo en desarrollo';

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

  @override
  String email = 'Correo  *';

  @override
  String emailError = 'Por favor, introduzca un correo válido';

  @override
  String message = 'Mensaje  *';

  @override
  String messageError = 'Por favor, introduzca un mensaje';

  @override
  String name = 'Nombre  *';

  @override
  String nameError = 'Por favor, introduzca su nombre';

  @override
  String subject = 'Asunto  *';

  @override
  String subjectError = 'Por favor, introduzca un asunto';

  @override
  String send = 'Enviar';
}

class EngTexts implements Texts {
  @override
  String wip = 'Work in progress';

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

  @override
  String email = 'Email  *';

  @override
  String emailError = 'Please, enter a valid email';

  @override
  String message = 'Message  *';

  @override
  String messageError = 'Please, enter a message';

  @override
  String name = 'Name  *';

  @override
  String nameError = 'Please, enter your name';

  @override
  String subject = 'Subject  *';

  @override
  String subjectError = 'Please, enter a subject';

  @override
  String send = 'Send';
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
