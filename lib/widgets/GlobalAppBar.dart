import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String actionText;
  final Function onPressed;

  GlobalAppBar({@required this.title, this.onPressed, this.actionText});

  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.black)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 13.5),
          child: actionText != null && onPressed != null
              ? TextButton(
                  onPressed: onPressed,
                  child: Text('Login',
                      style: TextStyle(
                          color: const Color(0xff5DB075), fontSize: 16.0)))
              : null,
        ),
      ],
    );
  }
}
