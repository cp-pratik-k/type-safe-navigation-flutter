import 'package:flutter/material.dart';
import 'package:nested_navigation/main.dart';
import 'package:nested_navigation/navigation/routes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(hintText: 'Enter your email'),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(hintText: 'Enter your password'),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () async {
                  userIsSignedIn = true;
                  await const VerifyRoute($extra: "verification-id-key").push(context);
                },
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
