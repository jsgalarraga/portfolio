import 'package:flutter/material.dart';
import 'package:portfolio/components/my_buttons.dart';
import 'package:portfolio/components/my_text_form_field.dart';
import 'package:portfolio/utils/texts.dart';
import 'package:provider/provider.dart';

String name;
String email;
String subject;
String message;

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<LanguageModel>().texts.contact,
      style: TextStyle(fontSize: 36),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.watch<LanguageModel>().texts.name,
          style: TextStyle(fontSize: 16),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        MyTextFormField(
          errorMessage: context.watch<LanguageModel>().texts.nameError,
          onSaved: (value){
            name = value;
          },
        ),
      ],
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.watch<LanguageModel>().texts.email,
          style: TextStyle(fontSize: 16),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        MyTextFormField(
          errorMessage: context.watch<LanguageModel>().texts.emailError,
          isEmail: true,
          onSaved: (value){
            email = value;
          },
        ),
      ],
    );
  }
}

class Subject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.watch<LanguageModel>().texts.subject,
          style: TextStyle(fontSize: 16),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        MyTextFormField(
          errorMessage: context.watch<LanguageModel>().texts.subjectError,
          onSaved: (value){
            subject = value;
          },
        ),
      ],
    );
  }
}

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.watch<LanguageModel>().texts.message,
          style: TextStyle(fontSize: 16),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        MyTextFormField(
          errorMessage: context.watch<LanguageModel>().texts.messageError,
          isMessage: true,
          onSaved: (value){
            message = value;
          },
        ),
      ],
    );
  }
}

class SendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyFlatButton(
      text: context.watch<LanguageModel>().texts.send,
      onTap: () {
        bool hasError = false;
        for (final field in allFields)
          hasError = !field.validate() || hasError;
        if (!hasError){
          Form.of(context).save();
          //TODO: Hacer el envio del email
          print('$name, $email, $subject, $message');
        }
        FocusScope.of(context).unfocus();
      },
    );
  }
}
