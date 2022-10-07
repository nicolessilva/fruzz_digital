import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/buttom_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/branding.png'),
                const SizedBox(height: 50.0),
                ButtomWidget(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  text: 'Login',
                  color: Colors.black,
                  colorText: Colors.white,
                ),
                const SizedBox(height: 16.0),
                ButtomWidget(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  text: 'Register',
                  color: Colors.white,
                  colorText: Colors.black,
                ),
                const SizedBox(height: 46.0),
                const Text(
                  'Continue as a guest',
                  style: TextStyle(
                    color: Color(0xFF35C2C1),
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 46.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
