import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class UserManagement {
  createNewUser(user, context) {
    Firestore.instance.collection('/user').add({
      'email': user.email,
      'uid': user.uid,
    }).then((value) {
      Navigator.of(context).pop();
      Navigator.pushReplacementNamed(context, '/newAccountSuccess');
    }).catchError((e) {
      print(e);
    });
  }
}
