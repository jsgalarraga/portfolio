import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/components/my_buttons.dart';
import 'package:portfolio/utils/texts.dart';

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: constraints.maxWidth > 400 ? 350 : constraints.maxWidth * .9,
            child: Image.asset('images/jsgalarraga.png'),
          ),
        );
      }
    );
  }
}

class MyTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Text(
        context.watch<LanguageModel>().texts.mainTitle,
        style: TextStyle(fontSize: 32),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Text(
        context.watch<LanguageModel>().texts.mainDescription,
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyFlatButton(
            text: context.watch<LanguageModel>().texts.portfolio,
            onTap: () => Navigator.pushNamed(context, '/portfolio')
        ),
        MyFlatButton(
            text: context.watch<LanguageModel>().texts.contact,
            onTap: () => Navigator.pushNamed(context, '/contact')
        ),
        MyFlatButton(
            text: context.watch<LanguageModel>().texts.cv,
            onTap: () => Navigator.pushNamed(context, '/cv')
        ),
      ],
    );
  }
}

class ButtonsCol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyFlatButton(
            text: context.watch<LanguageModel>().texts.portfolio,
            onTap: () => Navigator.pushNamed(context, '/portfolio'),
            reactive: true,
          ),
          MyFlatButton(
            text: context.watch<LanguageModel>().texts.contact,
            onTap: () => Navigator.pushNamed(context, '/contact'),
            reactive: true,
          ),
          MyFlatButton(
            text: context.watch<LanguageModel>().texts.cv,
            onTap: () => Navigator.pushNamed(context, '/cv'),
            reactive: true,
          ),
        ],
      ),
    );
  }
}



class SocialButton extends StatelessWidget {
  final String url = 'https://www.linkedin.com/in/jaime-sanchez-galarraga/';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 20,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(2),
            child: Image.asset('images/linkedin.png'),
            onTap: () async{
              if (await canLaunch(url)) launch(url);
            },
          ),
        ),
      ),
    );
  }
}
