import 'package:flutter/material.dart';

import '../widgets/buttom_widget.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 125.0),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
                'Don\'t worry! It occurs. Please enter the email address linked with your account.'),
            const SizedBox(height: 32.0),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffE8ECF4),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: const Color(0xffF7F8F9),
                labelText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 38.0),
            ButtomWidget(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              text: 'Send Code',
              color: Colors.black,
              colorText: Colors.white,
            ),
            const SizedBox(height: 430.0),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: 'Remember Password? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Login ',
                      style: TextStyle(
                        color: Color(0xFF35C2C1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
