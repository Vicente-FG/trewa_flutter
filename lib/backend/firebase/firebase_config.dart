import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDyXcFYFkmJDhsTa-KL7cb-67tnkFEJtTw",
            authDomain: "app-trewa.firebaseapp.com",
            projectId: "app-trewa",
            storageBucket: "app-trewa.appspot.com",
            messagingSenderId: "454840246304",
            appId: "1:454840246304:web:7e20cc6feb7c82b84f5c45",
            measurementId: "G-DDJSWJCWHN"));
  } else {
    await Firebase.initializeApp();
  }
}
