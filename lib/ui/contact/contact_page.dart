import 'package:flutter/material.dart';
import 'package:portfolio/ui/contact/model.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/ui/back_widget.dart';
import 'package:portfolio/ui/contact/narrow_view.dart';
import 'package:portfolio/ui/contact/wide_view.dart';
import 'package:portfolio/ui/language_widget.dart';
import 'package:portfolio/utils/dimensions.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  @override
  void initState() {
    context.read<ContactModel>().clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Form(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints){
                if (constraints.maxWidth > MyDimensions.wideWidth) return WideView();
                return NarrowView();
              },
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: LanguageSelector(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: BackArrow(),
          ),
        ],
      ),
    );
  }
}
