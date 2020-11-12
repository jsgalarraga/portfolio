import 'package:flutter/material.dart';
import 'package:portfolio/components/my_buttons.dart';
import 'package:portfolio/res/colors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          LeftSide(),
          RightSide(),
        ],
      ),
    );
  }
}

class LeftSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: MyColors.darkBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyLogo(),
            MyTitle(),
            Description(),
            ButtonsRow(),
            SocialButton(),
          ],
        ),
      ),
    );
  }
}

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Image.asset('images/jsgalarraga.png'),
    );
  }
}

class MyTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Engineer / Problem solver', style: TextStyle(fontSize: 32));
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Industrial Engineer specialized in Electronics and Automation', style: TextStyle(fontSize: 16)),
        Text('Flutter and Python developer', style: TextStyle(fontSize: 16)),
        Text('Working in Med&Home Solutions as a R&D Engineer / Developer', style: TextStyle(fontSize: 16))
      ],
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
            text: 'Portfolio',
            onTap: (){}
        ),
        MyFlatButton(
            text: 'Contact',
            onTap: (){}
        ),
        MyFlatButton(
            text: 'CV',
            onTap: (){}
        ),
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(2),
          child: Image.asset('images/linkedin.png'),
          onTap: () {},
        ),
      ),
    );
  }
}



class RightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset('images/andando_nieve.jpg', fit: BoxFit.cover,)
    );
  }
}


