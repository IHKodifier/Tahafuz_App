import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/widgets.dart';

class UserManagement {
  createNewUser(AuthResult authResult, context) {
  
    Firestore.instance.collection('/users').add({
      
      'email':authResult.user.email,
      'uid': authResult.user.uid,
    }).then((value) {
      Navigator.of(context).pop();
      Navigator.pushReplacementNamed(context, '/newAccountSuccess');
    }).catchError((e) {
      print(e);
    });
  }
}
