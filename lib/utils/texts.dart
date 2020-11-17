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
  //////Sports
  String sportsTitle;
  String sportsText;
  //////Developer
  String develTitle;
  String develText;
  //////Engineering
  String engTitle;
  String engText;
  //////Office
  String officeTitle;
  String officeText;

  ////Experience
  //////MedHome
  String medHomeTitle;
  String medHomeText;
  String medHomePeriod;
  //////ProtocolosQx
  String protocolosTitle;
  String protocolosText;
  String protocolosPeriod;
  //////Deloitte
  String deloitteTitle;
  String deloitteText;
  String deloittePeriod;

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
      'Actualmente trabajando en Soluciones Med&Home como \nIngeniero de I+D / Desarrollador\n'
      'Actualmente resido en Madrid';
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
  //////Sports
  @override
  String sportsTitle = 'Deportes';
  @override
  String sportsText = '🚵🏽 ⛷️ 🎾 🏄🏽‍♂ 🤾🏽';
  //////Developer
  @override
  String develTitle = 'Programación';
  @override
  String develText = 'Python, Flutter, Git, Linux, C, C++, Pyspark, MATLAB, Arduino, ROS, un poco de JavaScript '
      'HTML y CSS';
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
  ////Experience
  //////MedHome
  @override
  String medHomeTitle = 'Ingeniero de Investigación y Desarrollo en Med & Home';
  @override
  String medHomeText = 'Diseño y desarrollo de equipamiento para quirófanos y soluciones para el sector médico, '
      'principalmente como desarrollador Python (Extron), Android (Flutter) y Linux. Investigación de las necesidades '
      'de los médicos para crear soluciones que faciliten su trabajo y sirvan para la formación y documentación '
      'de sus procedimientos.';
  @override
  String medHomePeriod = 'Feb 2020 - Actualidad';
  //////ProtocolosQx
  @override
  String protocolosTitle = 'Fundador de la App Protocolos Quirúrgicos | Desarrollador Flutter';
  @override
  String protocolosText = 'Concepción, diseño y desarrollo de una aplicación de protocolos quirúrgicos, en la que los '
      'profesionales de medicina pueden consultar los protocolos de todas las intervenciones quirúrgicas para '
      'desenvolverse en su trabajo de manera más eficiente y ayudar al personal de reciente incorporación a estar más integrado';
  @override
  String protocolosPeriod = 'Jun 2019 - Actualidad';
  @override
  //////Deloitte
  @override
  String deloitteTitle = 'Analista Junior en Deloitte';
  @override
  String deloitteText = 'Desarrollo de modelos de control en un entorno Big Data con el fin de automatizar procesos '
      'de forma eficiente. Uso de Python, PySpark y Hive.\nEn esta experiencia ha aumentado mi conocimiento de la '
      'tecnología Big Data, su implantación y su potencial, además de otras cualidades como la organización y '
      'gestión de equipos.';
  @override
  String deloittePeriod = 'Sept 2019 - Feb 2020';
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
      'Working in Med&Home Solutions as a R&D Engineer / Developer\nCurrently residing in Madrid';
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
  //////Sports
  @override
  String sportsTitle = 'Sports';
  @override
  String sportsText = '🚵🏽 ⛷️ 🎾 🏄🏽‍♂ 🤾🏽';
  //////Developer
  @override
  String develTitle = 'Programming';
  @override
  String develText = 'Python, Flutter, Git, Linux, C, C++, Pyspark, MATLAB, Arduino, ROS, a bit of JavaScript, '
      'HTML and CSS';
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
  ////Experience
  //////MedHome
  @override
  String medHomeTitle = 'Research and Development Engineer at Med & Home';
  @override
  String medHomeText = 'Design and development of equipment for the operating room and medical sector. Mainly as '
      'a Python, Flutter and Linux developer. Research about doctors\' needs to create solutions that facilitate '
      'their work and serve for the training and documentation of their procedures';
  @override
  String medHomePeriod = 'Feb 2020 - Present';
  //////ProtocolosQx
  @override
  String protocolosTitle = 'Founder at Protocolos Quirúrgicos App | Flutter Developer';
  @override
  String protocolosText = 'Definition, design and development of a surgical procedures app. Healthcare professionals '
      'can find information about all surgical procedures so they can work efficiently. It also helps students '
      'and newly hired professionals to be more integrated';
  @override
  String protocolosPeriod = 'June 2019 - Present';
  //////Deloitte
  @override
  String deloitteTitle = 'Junior Analyst at Deloitte';
  @override
  String deloitteText = 'Control model development with PySpark in a Big Data framework aiming to automate '
      'processes efficiently. Using Python, PySpark and Hive.\nIn this job, I learnt closely how Big Data '
      'operates and its potential, also increasing my abilities to work with a team and manage tasks.';
  @override
  String deloittePeriod = 'Sept 2019 - Feb 2020';
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
