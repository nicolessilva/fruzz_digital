import 'package:flutter/material.dart';
import 'package:fruzz_digital/pages/login_page.dart';
import 'package:fruzz_digital/pages/welcome_page.dart';

import 'pages/password_page.dart';
import 'pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/password': (context) => const PasswordPage(),
        
      },
    );
  }
}
