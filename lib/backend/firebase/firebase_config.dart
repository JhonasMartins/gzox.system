import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCXMw_bNK_2_XcoRViL3wAuKZSRJjxtEdQ",
            authDomain: "gzox-intelligence.firebaseapp.com",
            projectId: "gzox-intelligence",
            storageBucket: "gzox-intelligence.appspot.com",
            messagingSenderId: "572461647457",
            appId: "1:572461647457:web:9522d2900ba43a463bcc20",
            measurementId: "G-RGK4QM23W0"));
  } else {
    await Firebase.initializeApp();
  }
}
