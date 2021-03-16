import 'package:flutter/material.dart';
import 'package:mobile_kit/widgets/GlobalAppBar.dart';
import 'package:mobile_kit/widgets/PageActionButton.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalAppBar(title: 'Login'),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password'),
              ),
              PageActionButton(
                  buttonText: 'Log In', subButtonText: 'Forgot your password?')
            ],
          ),
        ));
  }
}
