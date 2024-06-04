import 'package:flutter/material.dart';
import 'package:nested_navigation/navigation/routes.dart';

class VerifyOTPScreen extends StatefulWidget {
  final String verificationId;
  const VerifyOTPScreen({super.key, required this.verificationId});

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(hintText: 'Enter OTP'),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                    HomeRoute().go(context);
                },
                child: const Text('Verify'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
