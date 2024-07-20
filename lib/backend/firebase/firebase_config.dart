import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDOVC3mzu5yaIBjl9HfftrWLaC5GQmb6UM",
            authDomain: "espect-flutterflow-firebase.firebaseapp.com",
            projectId: "espect-flutterflow-firebase",
            storageBucket: "espect-flutterflow-firebase.appspot.com",
            messagingSenderId: "351259074767",
            appId: "1:351259074767:web:95e471c9fd57ce0f15d7ba"));
  } else {
    await Firebase.initializeApp();
  }
}
