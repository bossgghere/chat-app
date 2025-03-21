// ignore_for_file: unused_import

import 'package:chat_app_gg/auth/auth_gate.dart';
import 'package:chat_app_gg/auth/login_or_register.dart';
import 'package:chat_app_gg/firebase_options.dart';
import 'package:chat_app_gg/pages/login_page.dart';
import 'package:chat_app_gg/pages/register_page.dart';
import 'package:chat_app_gg/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      theme: lightMode,
    );
  }
}
