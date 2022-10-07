import 'package:flutter/material.dart';

import '../widgets/buttom_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              ' Hello! Register to get started',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
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
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
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
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 12.0),
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
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 12.0),
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
                labelText: 'Confirm password',
              ),
            ),
            const SizedBox(height: 30.0),
            ButtomWidget(
              onPressed: () {
                Navigator.pushNamed(context, '/password');
              },
              text: 'Register',
              color: Colors.black,
              colorText: Colors.white,
            ),
            const SizedBox(height: 30.0),
            Row(
              children: const [
                Expanded(child: Divider()),
                Text('Or Register with'),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: const Color(0xffE8ECF4),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/124/124010.png'),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: const Color(0xffE8ECF4),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/2991/2991148.png'),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: const Color(0xffE8ECF4),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/apple-icon.png'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 82.0),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Login Now ',
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
