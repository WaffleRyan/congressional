import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3iTToVcCPU5hV7YFWlJvMYDOc6ZlnW9I",
            authDomain: "congressional-73ihfg.firebaseapp.com",
            projectId: "congressional-73ihfg",
            storageBucket: "congressional-73ihfg.appspot.com",
            messagingSenderId: "1079339227982",
            appId: "1:1079339227982:web:b76d85478072e28a869c1f"));
  } else {
    await Firebase.initializeApp();
  }
}
