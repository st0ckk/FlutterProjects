// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future createUserFromSession(
  String email,
  String password,
  String phone,
  String address,
  String role,
  String displayName,
) async {
  // Create a secondary Firebase app to avoid logging out current user
  FirebaseApp tempApp;
  try {
    tempApp = Firebase.app('tempApp');
  } catch (e) {
    tempApp = await Firebase.initializeApp(
      name: 'tempApp',
      options: Firebase.app().options,
    );
  }

  try {
    // Create user on secondary app
    final tempAuth = FirebaseAuth.instanceFor(app: tempApp);
    final userCredential = await tempAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final newUserUid = userCredential.user!.uid;

    // Create user document in Firestore
    await FirebaseFirestore.instance.collection('users').doc(newUserUid).set({
      'email': email,
      'display_name': displayName,
      'phone_number': phone,
      'address': address,
      'role': role,
      'uid': newUserUid,
      'created_time': FieldValue.serverTimestamp(),
    });

    // Sign out from secondary app so it doesn't interfere
    await tempAuth.signOut();
  } catch (e) {
    throw Exception('Error creating user: $e');
  }
}
