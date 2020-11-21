import 'package:flutter/material.dart';

enum sendStatuses {undefined, sending, sent, error}

class ContactModel extends ChangeNotifier {
  sendStatuses sendStatus = sendStatuses.undefined;

  void update(sendStatuses status){
    sendStatus = status;
    notifyListeners();
  }

  void clear(){
    sendStatus = sendStatuses.undefined;
  }
}