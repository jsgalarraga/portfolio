import 'package:flutter/material.dart';

final Set<_MyTextFormFieldState> allFields = <_MyTextFormFieldState>{};

class MyTextFormField extends StatefulWidget {
  MyTextFormField({
    @required this.isEmail,
    @required this.errorMessage,
    @required this.onSaved,
    this.maxLines = 1,
  });

  final bool isEmail;
  final String errorMessage;
  final Function(String) onSaved;
  final int maxLines;

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  TextEditingController _controller = TextEditingController();
  bool showError = false;
  InputBorder _border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.zero),
    borderSide: BorderSide(color: Colors.white),
  );
  InputBorder _errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.zero),
    borderSide: BorderSide(color: Colors.red),
  );

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
    return Container(
      constraints: BoxConstraints(
        maxHeight: showError
            ? widget.maxLines == 1 ? 55 : 200
            : widget.maxLines == 1 ? 34 : 200
      ),
      child: TextFormField(
        controller: _controller,
        onSaved: widget.onSaved,
        onTap: (){
          setState(() {
            showError = false;
          });
        },
        maxLines: widget.maxLines,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: _border,
          enabledBorder: _border,
          focusedBorder: _border,
          errorBorder: _errorBorder,
          focusedErrorBorder: _errorBorder,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: widget.maxLines == 1 ? 0.0 : 10.0),
          errorText: showError ? widget.errorMessage : null,
        ),
        cursorWidth: 1.0,
        cursorColor: Colors.white,
        // style: TextStyle(color: MyColors.darkBlue),
      ),
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
