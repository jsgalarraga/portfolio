import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/my_buttons.dart';
import 'package:portfolio/components/my_text_form_field.dart';
import 'package:portfolio/ui/contact/model.dart';
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

class SendResultMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _status = context.watch<ContactModel>().sendStatus;
    switch(_status){
      case sendStatuses.undefined:
        return Container();
      case sendStatuses.sending:
        return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white)));
      case sendStatuses.sent:
        return Container(
          child: Text(context.watch<LanguageModel>().texts.sentFeedbackSuccess),
        );
      case sendStatuses.error:
        return Container(
          child: Text(context.watch<LanguageModel>().texts.sentFeedbackError),
        );
    }
    return Container();
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
          context.read<ContactModel>().update(sendStatuses.sending);
          Form.of(context).save();
          Map<String, String> _emailData = {
            'email': email,
            'name' : name,
            'subject': subject,
            'message': message
          };
          sendEmail(context, _emailData);
        }
      },
    );
  }
}

void sendEmail(BuildContext context, Map<String, String> data) async{
  FirebaseFunctions functions = FirebaseFunctions.instance;
  HttpsCallable callable = functions.httpsCallable('sendEmail');
  final response = await callable(data);
  final result = response.data['success'];
  if (result == true){
    context.read<ContactModel>().update(sendStatuses.sent);
    for (final field in allFields)
      field.controller.clear();
  } else {
    context.read<ContactModel>().update(sendStatuses.error);
  }
  FocusScope.of(context).unfocus();
}
