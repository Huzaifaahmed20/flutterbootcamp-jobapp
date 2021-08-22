import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:job_app/screens/add_job.dart';
import 'package:job_app/screens/dashboard.dart';
import 'package:job_app/screens/signup.dart';
import 'package:job_app/services/firebase_service.dart';

void main() {
  FirebaseService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: SignUpScreen(),
      routes: {
        '/dashboard': (context) => DashboardScreen(),
        '/add-job': (context) => AddJob(),
      },
    );
  }
}
