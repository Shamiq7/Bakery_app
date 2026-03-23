import 'package:flutter/material.dart';

class Loginpg extends StatelessWidget {
  const Loginpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'), centerTitle: true),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.red,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
