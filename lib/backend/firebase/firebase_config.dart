import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDRI0O9Nk03BjOV8cDza8AcE1PVmtVSTHc",
            authDomain: "reposteria-q2e1ah.firebaseapp.com",
            projectId: "reposteria-q2e1ah",
            storageBucket: "reposteria-q2e1ah.firebasestorage.app",
            messagingSenderId: "716860018267",
            appId: "1:716860018267:web:713d3f517c5e932aff797e"));
  } else {
    await Firebase.initializeApp();
  }
}
