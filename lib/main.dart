import 'package:flutter/material.dart';
import 'package:portfolio/ui/contact/contact_page.dart';
import 'package:portfolio/ui/cv/cv_page.dart';
import 'package:portfolio/utils/texts.dart';
import 'package:portfolio/ui/portfolio/portfolio_page.dart';
import 'package:provider/provider.dart';

import 'ui/home/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jsgalarraga',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/portfolio': (context) => PortfolioPage(),
        '/contact': (context) => ContactPage(),
        '/cv': (context) => CVPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
    );
  }
}
