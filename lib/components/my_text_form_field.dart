import 'package:flutter/material.dart';

final Set<_MyTextFormFieldState> allFields = <_MyTextFormFieldState>{};

class MyTextFormField extends StatefulWidget {
  MyTextFormField({
    @required this.errorMessage,
    @required this.onSaved,
    this.isEmail = false,
    this.isMessage = false,
  });

  final bool isEmail;
  final bool isMessage;
  final String errorMessage;
  final Function(String) onSaved;

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  TextEditingController controller = TextEditingController();
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
    final node = FocusScope.of(context);
    return Container(
      constraints: BoxConstraints(
        maxHeight: showError
            ? widget.isMessage ? 200 : 55
            : widget.isMessage ? 200 : 34
      ),
      child: TextFormField(
        controller: controller,
        onSaved: widget.onSaved,
        onTap: (){
          setState(() {
            showError = false;
          });
        },
        maxLines: widget.isMessage ? 10 : 1,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: _border,
          enabledBorder: _border,
          focusedBorder: _border,
          errorBorder: _errorBorder,
          focusedErrorBorder: _errorBorder,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: widget.isMessage ? 10.0 : 0.0),
          errorText: showError ? widget.errorMessage : null,
        ),
        cursorWidth: 1.0,
        cursorColor: Colors.white,
        textInputAction: widget.isMessage ? TextInputAction.done : TextInputAction.next,
        onEditingComplete: () => node.nextFocus(),
        onFieldSubmitted: (_) => node.unfocus(),
      ),
    );
  }

  bool validate(){
    bool errorCondition = widget.isEmail
        ? controller.value.text.isEmpty || !controller.value.text.contains('@')
        : controller.value.text.isEmpty;
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
