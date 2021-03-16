import 'package:flutter/material.dart';

class SignUpSreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpSreen> {
  bool agreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text('Sign Up',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 13.5),
              child: TextButton(
                  onPressed: () {},
                  child: Text('Login',
                      style: TextStyle(
                          color: const Color(0xff5DB075), fontSize: 16.0))),
            ),
          ],
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
              Expanded(
                  child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 42.0),
                      child: Row(children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('Sign Up',
                                style: TextStyle(fontSize: 16.0)),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff5DB075)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ))),
                        ))
                      ]),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('Forgot your password?'),
                        style: TextButton.styleFrom(primary: Color(0xff5DB075)))
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
