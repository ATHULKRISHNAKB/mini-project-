import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDpNpfUx6oLGoZZ6-MrO08_rCfwdqUdbSE",
            authDomain: "heli-1fbc4.firebaseapp.com",
            projectId: "heli-1fbc4",
            storageBucket: "heli-1fbc4.appspot.com",
            messagingSenderId: "135139144181",
            appId: "1:135139144181:web:64cd15fa3c51c0cd21f0bc"));
  } else {
    await Firebase.initializeApp();
  }
}
