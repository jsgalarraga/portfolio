import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

final Set<_MyTextFormFieldState> allFields = <_MyTextFormFieldState>{};

class MyTextFormField extends StatefulWidget {
  MyTextFormField({
    @required this.isEmail,
    @required this.errorMessage,
    @required this.onSaved,
  });

  final bool isEmail;
  final String errorMessage;
  final Function(String) onSaved;

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  TextEditingController _controller = TextEditingController();
  bool showError = false;

  @override
  void initState() {
    super.initState();
    allFields.add(this);
  }

  @override
  void dispose() {
    allFields.remove(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onSaved: widget.onSaved,
      onTap: (){
        setState(() {
          showError = false;
        });
      },
      expands: true,
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        errorText: showError ? widget.errorMessage : null
      ),
      cursorWidth: 1.0,
      cursorColor: MyColors.darkBlue,
      style: TextStyle(color: MyColors.darkBlue),
    );
  }

  bool validate(){
    bool errorCondition = widget.isEmail
        ? _controller.value.text.isEmpty || !_controller.value.text.contains('@')
        : _controller.value.text.isEmpty;
    if (errorCondition){
      setState(() {
        showError = true;
      });
      return false;
    }
    setState(() {
      showError = false;
    });
    return true;
  }
}
