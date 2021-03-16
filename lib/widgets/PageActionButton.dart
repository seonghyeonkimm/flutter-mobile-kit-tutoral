import 'package:flutter/material.dart';

class PageActionButton extends StatelessWidget {
  final String buttonText;
  final String subButtonText;

  PageActionButton({@required this.buttonText, @required this.subButtonText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  child: Text(buttonText, style: TextStyle(fontSize: 16.0)),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xff5DB075)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ))),
              ))
            ]),
          ),
          TextButton(
              onPressed: () {},
              child: Text(subButtonText),
              style: TextButton.styleFrom(primary: Color(0xff5DB075)))
        ],
      ),
    ));
  }
}
