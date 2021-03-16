import 'package:flutter/material.dart';
import 'package:mobile_kit/screens/FeedScreen.dart';
import 'package:mobile_kit/screens/LoginScreen.dart';
import 'package:mobile_kit/widgets/GlobalAppBar.dart';
import 'package:mobile_kit/widgets/PageActionButton.dart';

class SignUpSreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpSreen> {
  bool agreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalAppBar(
          title: 'SignUp',
          actionText: 'Login',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
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
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Name'),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              CheckboxListTile(
                value: agreed,
                onChanged: (newValue) {
                  print(newValue);
                  setState(() {
                    agreed = newValue;
                  });
                },
                title: Text(
                    'I would like to receive your newsletter and other promotional information.'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              PageActionButton(
                buttonText: 'Sign Up',
                subButtonText: 'Forgot your password?',
                onClick: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => FeedScreen()));
                },
              )
            ],
          ),
        ));
  }
}
