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

  //CV Page
  String experience;
  String skills;
  String education;
  ////Education
  //////Degree
  String degreeTitle;
  String degreeText;
  String degreePeriod;
  //////Master
  String masterTitle;
  String masterText;
  String masterPeriod;
  //////Aalto
  String aaltoTitle;
  String aaltoText;
  String aaltoPeriod;

  ////Skills
  //////Personal
  String personalTitle;
  String personalText;
  //////Developer
  String develTitle;
  String develText;
  //////Engineering
  String engTitle;
  String engText;
  //////Office
  String officeTitle;
  String officeText;

}

class EspTexts implements Texts{
  @override
  String wip = 'Trabajo en desarrollo';

  //Home page
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

  //Contact page
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

  //CV page
  @override
  String education = 'Educación';
  @override
  String experience = 'Experiencia';
  @override
  String skills = 'Habilidades';
  ////Education
  //////Degree
  @override
  String degreeTitle = 'Escuela Técnica Superior de Ingenieros Industriales (ETSII) - UPM';
  @override
  String degreeText = 'Grado en Ingeniería en Tecnologías Industriales. Especialidad de Automática y Electrónica';
  @override
  String degreePeriod = '2013 - 2017';
  //////Master
  @override
  String masterTitle = 'Escuela Técnica Superior de Ingenieros Industriales (ETSII) - UPM';
  @override
  String masterText = 'Máster en Ingeniería en Tecnologías Industriales. Especialidad de Automática y Electrónica';
  @override
  String masterPeriod = '2017 - 2019';
  //////Aalto
  @override
  String aaltoTitle = 'Universidad de Aalto (Helsinki)';
  @override
  String aaltoText = 'Año completo de intercambio durante el Máster';
  @override
  String aaltoPeriod = '2018 - 2019';
  ////Skills
  //////Personal
  @override
  String personalTitle = 'Personales';
  @override
  String personalText = 'Trabajador de equipo, aprendizaje rápido, innovador, resolutivo';
  //////Developer
  @override
  String develTitle = 'Programación';
  @override
  String develText = 'Python, Flutter, Git, C, C++, Pyspark, MATLAB, Arduino, Linux, ROS, un poco de JavaScript';
  //////Engineering
  @override
  String engTitle = 'Ingeniería';
  @override
  String engText = 'PLC, AutoCAD, SolidEdge, Impresión 3D, Automatización, Electrónica';
  //////Office
  @override
  String officeTitle = 'Ofimática y Colaboración';
  @override
  String officeText = 'Microsoft Office, Google Suite, MS Teams, Jira, Slack';
}

class EngTexts implements Texts {
  @override
  String wip = 'Work in progress';

  // Home page
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

  //Contact page
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

  //CV page
  @override
  String education = 'Education';
  @override
  String experience = 'Experience';
  @override
  String skills = 'Skills';
  ////Education
  //////Degree
  @override
  String degreeTitle = 'Technichal School of Industrial Engineering (ETSII) - UPM';
  @override
  String degreeText = 'Degree in Industrial Engineering. Specialized in Electronics and Automation';
  @override
  String degreePeriod = '2013 - 2017';
  //////Master
  @override
  String masterTitle = 'Technichal School of Industrial Engineering (ETSII) - UPM';
  @override
  String masterText = 'Master in Industrial Engineering. Specialized in Electronics and Automation';
  @override
  String masterPeriod = '2017 - 2019';
  //////Aalto
  @override
  String aaltoTitle = 'Aalto University (Helsinki)';
  @override
  String aaltoText = 'Full year exchange for the Master in Industrial Engineering';
  @override
  String aaltoPeriod = '2018 - 2019';
  ////Skills
  //////Personal
  @override
  String personalTitle = 'Personal';
  @override
  String personalText = 'Team worker, fast learner, innovative, problem solver';
  //////Developer
  @override
  String develTitle = 'Programming';
  @override
  String develText = 'Python, Flutter, Git, C, C++, Pyspark, MATLAB, Arduino, Linux, ROS, a bit of JavaScript';
  //////Engineering
  @override
  String engTitle = 'Engineering';
  @override
  String engText = 'PLC, AutoCAD, SolidEdge, 3D Printing, Automatics, Electronics';
  //////Office
  @override
  String officeTitle = 'Office & Collaboration';
  @override
  String officeText = 'Microsoft Office, Google Suite, MS Teams, Jira, Slack';
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
