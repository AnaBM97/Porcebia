import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD2GfzZwUSZBgUiA3eGYPBphcFhxkvyfdQ",
            authDomain: "handcradt.firebaseapp.com",
            projectId: "handcradt",
            storageBucket: "handcradt.appspot.com",
            messagingSenderId: "1045846468722",
            appId: "1:1045846468722:web:0018b5505343b011c97aeb",
            measurementId: "G-TX6GCL86YS"));
  } else {
    await Firebase.initializeApp();
  }
}
