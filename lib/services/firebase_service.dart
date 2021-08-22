import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  static init() async {
    await Firebase.initializeApp();
  }
}
