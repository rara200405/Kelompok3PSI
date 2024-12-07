import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Login'),
    backgroundColor: Colors.orange,
    ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    const Text(
    'Sign in to continue.',
    style: TextStyle(fontSize: 16),
    ),
    const SizedBox(height: 20),
    TextField(
    decoration: InputDecoration(
    hintText: 'Name',
    ),
    ),
    const SizedBox(height: 10),
    TextField(
    obscureText: true,
    decoration: InputDecoration(
    hintText: 'Password',
    ),
    ),
    const SizedBox(height: 20),
    ElevatedButton(
    onPressed: () {
    // TODO: Implementasi login
    },
    child: const Text('Log In'),
    ),
      const SizedBox(height: 10),
      TextButton(
        onPressed: () {
          // TODO: Implementasi forgot password
        },
        child: const Text('Forgot Password?'),
      ),
      TextButton(
        onPressed: () {
          // TODO: Implementasi signup
        },
        child: const Text('Signup!'),
      ),
      ],
    ),
    ),
    );
    }
}